package com.team01.services;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;

import com.team01.model.Booking;
import com.team01.model.Facility;
import com.team01.model.Member;

public interface BookingService {
	ArrayList<Booking> findAllBooking();

	Booking findBooking(Integer flNo);

	Booking createBooking(Booking booking);
	Booking changeBooking(Booking booking);
	Booking updateBooking(Booking booking);
	void removeBooking(Booking booking);
	ArrayList<Booking> findCoursesByEID(@Param("eid") Integer eid);
	Booking findBookingByEID(@Param("eid") Integer eid);
	ArrayList<Booking> findBookingByMID(@Param("eid") Integer eid);
	
	ArrayList<Booking> findcancelBooking( Date startdate, Date enddate);
}
