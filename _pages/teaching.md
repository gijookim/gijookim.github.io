---
layout: page
permalink: /teaching/
title: Teaching
description:
nav: true
nav_order: 4
calendar: false
---

<style>
  .course-links {
    display: flex;
    flex-wrap: wrap;
    gap: 0.35rem;
    margin: 0.45rem 0 0.65rem;
  }
</style>

<div class="courses">
  <h2 class="year">2022</h2>
  <div class="course-list">
    {% assign course = site.teachings | where: 'course_id', 'water-resources-systems-engineering' | first %}
    <div class="course-item">
      <h3 class="course-title">
        <a href="{{ course.url | relative_url }}">{{ course.title }}</a>
      </h3>
      <div class="course-meta">
        <span class="course-term">{{ course.term }}</span>
        <span class="course-instructor">{{ course.instructor }}</span>
      </div>
      <div class="course-links">
        <a class="btn btn-sm z-depth-0" href="{{ course.syllabus | relative_url }}" target="_blank">Syllabus</a>
        <a class="btn btn-sm z-depth-0" href="{{ course.materials | relative_url }}" target="_blank">Course Materials</a>
      </div>
      <div class="course-description">{{ course.description | markdownify }}</div>
    </div>

    {% assign course = site.teachings | where: 'course_id', 'statistical-hydrology' | first %}
    <div class="course-item">
      <h3 class="course-title">
        <a href="{{ course.url | relative_url }}">{{ course.title }}</a>
      </h3>
      <div class="course-meta">
        <span class="course-term">{{ course.term }}</span>
        <span class="course-instructor">{{ course.instructor }}</span>
      </div>
      <div class="course-links">
        <a class="btn btn-sm z-depth-0" href="{{ course.syllabus | relative_url }}" target="_blank">Syllabus</a>
        <a class="btn btn-sm z-depth-0" href="{{ course.materials | relative_url }}" target="_blank">Course Materials</a>
      </div>
      <div class="course-description">{{ course.description | markdownify }}</div>
    </div>
  </div>

  <h2 class="year">Pre-2022</h2>
  <div class="course-list">
    {% assign course = site.teachings | where: 'course_id', 'teaching-assistant' | first %}
    <div class="course-item">
      <h3 class="course-title">
        <a href="{{ course.url | relative_url }}">{{ course.title }}</a>
      </h3>
      <div class="course-meta">
        <span class="course-term">{{ course.term }}</span>
        <span class="course-instructor">{{ course.instructor }}</span>
      </div>
      <div class="course-description">{{ course.description | markdownify }}</div>
    </div>
  </div>
</div>
