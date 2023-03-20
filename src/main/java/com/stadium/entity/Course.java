package com.stadium.entity;

import lombok.Data;

@Data
public class Course {
    int id;
    String teacher;
    int course_id;
    String course_name;
    String time;
    String location;
}
