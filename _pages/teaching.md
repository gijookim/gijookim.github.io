---
layout: page
permalink: /teaching/
title: Teaching
description:
nav: true
nav_order: 4
calendar: false
---

<p class="teaching-intro">Teaching materials from courses taught in Civil &amp; Environmental Engineering at Seoul National University.</p>

<style>
  .teaching-intro {
    margin-bottom: 2rem;
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
      <div class="course-description">{{ course.description | markdownify }}</div>
      <p>
        <a href="{{ course.syllabus | relative_url }}" target="_blank" rel="noopener">Syllabus</a> ·
        <a href="{{ course.materials | relative_url }}">Course Materials</a> ·
        <a href="{{ course.assignments | relative_url }}">Assignments</a> ·
        <a href="{{ course.final_project | relative_url }}">Final Project</a>
        <br>
        <a href="{{ course.field_trip | relative_url }}">Field Trip Photos (Boryeong Dam)</a>
      </p>
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
      <div class="course-description">{{ course.description | markdownify }}</div>
      <p>
        <a href="{{ course.syllabus | relative_url }}" target="_blank" rel="noopener">Syllabus</a> ·
        <a href="{{ course.materials | relative_url }}">Course Materials</a> ·
        <a href="{{ course.assignments | relative_url }}">Assignments</a> ·
        <a href="{{ course.final_project | relative_url }}">Final Project</a>
        <br>
        <a href="{{ course.field_trip | relative_url }}">Field Trip Photos (Han River Flood Control Office)</a>
      </p>
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
