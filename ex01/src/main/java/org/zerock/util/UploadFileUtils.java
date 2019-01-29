package org.zerock.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
	
	private static final Logger logger = LoggerFactory.getLogger(UploadFileUtils.class);
	
	// 날짜별로 폴더 생성해서 경로 설정
	public static String calcPath(String uploadPath)throws Exception{
		
		Calendar cal = Calendar.getInstance();
		
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		
		String monthPath = yearPath +
				File.separator +
				new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
		
		String datePath = monthPath +
				File.separator + 
				new DecimalFormat("00").format(cal.get(Calendar.DATE));
		
		makeDir(uploadPath, yearPath,monthPath,datePath);
		
		logger.info(datePath);
		
		return datePath;
	}
	
	// 폴더 생성
	public static void makeDir(String uploadPath, String... paths) {
		if(new File(paths[paths.length-1]).exists()) {
			return;
		}
		
		for(String path : paths) {
			File dirPath = new File(uploadPath + path);
			
			if(!dirPath.exists()) {
				dirPath.mkdir();
			}
		}
	}
	
	// 파일 업로드 
	public static String uploadFile(String uploadPath,
									String originalName,
									byte[] fileData)throws Exception{
		UUID uid = UUID.randomUUID();
		
		String savedName = uid.toString() + "_" + originalName;
		
		String savedPath = calcPath(uploadPath);
		
		File target = new File(uploadPath + savedPath, savedName);
		
		FileCopyUtils.copy(fileData, target);
		
		String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		String uploadedFileName = null;
		//동영상 썸네일 생성
//				String str = null;
//				String originalFileExtension = ".mp4";
//				int i = target.toString().indexOf(".");
//				String noExtension = target.toString().substring(0,i);
//				String[] cmd = new String[] {"C:\\zzz\\upload\\ffmpeg"
//				, "-i", target.toString(), "-an", "-ss"
//				, "00:00:01", "-r", "1", "-vframes", "1", "-y"
//				, "C:\\zzz\\upload\\"+savedPath+"\\"+"s_"+savedName+".jpg"};
//				Process process = null;
//				 
//				try{
//				    if(originalFileExtension.equals(".mp4")){
//				    // 프로세스 빌더를 통하여 외부 프로그램 실행
//				    process = new ProcessBuilder(cmd).start();
//				    // 외부 프로그램의 표준출력 상태 버퍼에 저장
//				    BufferedReader stdOut = new BufferedReader( new InputStreamReader(process.getInputStream()) );
//				    // 표준출력 상태를 출력
//				    while( (str = stdOut.readLine()) != null ) {
//				        System.out.println(str);
//				        }
//				    }
//				}
//				catch (IOException e) {
//				    e.printStackTrace();
//				}
		if(MimeMediaUtil.getMediaType(formatName) != null) {
			uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
		}else {
			uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
		}
		return uploadedFileName;
	}
	
	
	// 파일 업로드 
	public static String snsUploadFile(String uploadPath,
									String originalName,
									byte[] fileData)throws Exception{
		UUID uid = UUID.randomUUID();
		
		String savedName = uid.toString() + "_" + originalName;
		
		String savedPath = calcPath(uploadPath);
		
		File target = new File(uploadPath + savedPath, savedName);
		
		FileCopyUtils.copy(fileData, target);
		
		String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		String uploadedFileName = null;
		//동영상 썸네일 생성
//				String str = null;
//				String originalFileExtension = ".mp4";
//				int i = target.toString().indexOf(".");
//				String noExtension = target.toString().substring(0,i);
//				String[] cmd = new String[] {"C:\\zzz\\upload\\ffmpeg"
//				, "-i", target.toString(), "-an", "-ss"
//				, "00:00:01", "-r", "1", "-vframes", "1", "-y"
//				, "C:\\zzz\\upload\\"+savedPath+"\\"+"s_"+savedName+".jpg"};
//				Process process = null;
//				 
//				try{
//				    if(originalFileExtension.equals(".mp4")){
//				    // 프로세스 빌더를 통하여 외부 프로그램 실행
//				    process = new ProcessBuilder(cmd).start();
//				    // 외부 프로그램의 표준출력 상태 버퍼에 저장
//				    BufferedReader stdOut = new BufferedReader( new InputStreamReader(process.getInputStream()) );
//				    // 표준출력 상태를 출력
//				    while( (str = stdOut.readLine()) != null ) {
//				        System.out.println(str);
//				        }
//				    }
//				}
//				catch (IOException e) {
//				    e.printStackTrace();
//				}
		if(MimeMediaUtil.getMediaType(formatName) != null) {
			uploadedFileName = target.toString().substring(uploadPath.length()-2).replace(File.separatorChar, '/');		// uploadPath - 2 를 한것은 uploadPath 가 \ 한번이 아닌 \\ 이렇게 두번으로 찍혀서 -2 해줬다.
			makeThumbnail2(uploadPath, savedPath, savedName);
		}else {
			uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
		}
		return uploadedFileName;
	}
	
	
	private static String makeThumbnail(
				String uploadPath,
				String path,
				String fileName)throws Exception{
		BufferedImage sourceImg = 
				ImageIO.read(new File(uploadPath + path, fileName));
		
		BufferedImage destImg =
				Scalr.resize(sourceImg,
							 Scalr.Method.AUTOMATIC,
							 Scalr.Mode.FIT_TO_HEIGHT, 100);
		
		String thumbnailName = 
				uploadPath + path + File.separator + "s_"+fileName;
		
		File newFile = new File(thumbnailName);
		String formatName =
				fileName.substring(fileName.lastIndexOf(".")+1);
		
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
	private static String makeThumbnail2(
				String uploadPath,
				String path,
				String fileName)throws Exception{
		BufferedImage sourceImg = 
				ImageIO.read(new File(uploadPath + path, fileName));
		
		BufferedImage destImg =
				Scalr.resize(sourceImg,
							 Scalr.Method.AUTOMATIC,
							 Scalr.Mode.FIT_TO_HEIGHT, 300);
		
		String thumbnailName = 
				uploadPath + path + File.separator + "s_"+fileName;
		
		File newFile = new File(thumbnailName);
		String formatName =
				fileName.substring(fileName.lastIndexOf(".")+1);
		
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
	private static String makeIcon(String uploadPath,
			String path,
			String fileName)throws Exception{
		String iconName =
				uploadPath + path + File.separator + fileName;
		
		return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
}
