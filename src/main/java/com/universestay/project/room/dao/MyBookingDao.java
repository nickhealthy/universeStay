package com.universestay.project.room.dao;

import com.universestay.project.user.dto.RoomReviewDto;

import java.util.List;
import java.util.Map;

public interface MyBookingDao {
    List<Map<String, Object>> selectMyBookings(Map map) throws Exception;
    int insertRoomReview(RoomReviewDto dto) throws Exception;
}