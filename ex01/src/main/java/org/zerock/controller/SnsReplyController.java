package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SnsCriteria;
import org.zerock.domain.SnsReplyVO;
import org.zerock.service.SnsReplyService;

@RestController
@RequestMapping("/snsreplies")
public class SnsReplyController {

	@Autowired
	private SnsReplyService service;
	
	@RequestMapping(value="", method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody SnsReplyVO vo){
		System.out.println("1");
		ResponseEntity<String> entity = null;
		try {
			service.addReply(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		System.out.println(entity.getBody());
		return entity;
	}
	
	@RequestMapping(value="/all/{bno}", method=RequestMethod.GET)
	public ResponseEntity<List<SnsReplyVO>> list(@PathVariable("bno") Integer bno){
		System.out.println("2");
		ResponseEntity<List<SnsReplyVO>> entity = null;
		try {
			entity = new ResponseEntity<List<SnsReplyVO>>(
					service.listReply(bno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<SnsReplyVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{rno}", method= {RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(
			@PathVariable("rno") Integer rno,
			@RequestBody SnsReplyVO vo){
		System.out.println("3");
		ResponseEntity<String> entity = null;
		try {
			vo.setRno(rno);
			service.modifyReply(vo);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{rno}", method=RequestMethod.DELETE)
	public ResponseEntity<String> remove(
			@PathVariable("rno") Integer rno){
		System.out.println("4");
		ResponseEntity<String> entity = null;
		try {
			service.removeReply(rno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{bno}/{page}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listPage(
			@PathVariable("bno") Integer bno,
			@PathVariable("page") Integer page){
		System.out.println("5");
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			SnsCriteria cri = new SnsCriteria();
			cri.setPage(page);
			
			Map<String, Object> map = new HashMap<String, Object>();
			List<SnsReplyVO> list =service.listReplyPage(bno);
			
			map.put("list", list);
			
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
