---
layout: default
title: 筆記
lang: zh-Hant
en_url: /notes/
permalink: /zh-hant/notes/
---

# 筆記 {#notes}

<p class="section-intro">
簡短的治理筆記。每篇只取一個技術問題，把它翻譯成治理語言：風險是甚麼，誰來負責，實際上會怎樣部署。每篇都為講清楚一個想法而寫，把技術工作變成別人能跟上、也能複用的治理推理。
</p>

<ul class="note-list">
{% assign sorted_notes = site.pages | where: "lang", page.lang | where: "kind", "note" | sort: 'date' | reverse %}
{% for note in sorted_notes %}
  <li>
    <div class="note-date">{{ note.date | date: "%Y 年 %-m 月 %-d 日" }}</div>
    <div class="note-title"><a href="{{ note.url | relative_url }}">{{ note.title }}</a></div>
    <p>{{ note.summary }}</p>
  </li>
{% endfor %}
</ul>
