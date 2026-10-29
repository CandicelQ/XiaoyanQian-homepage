---
layout: default
title: 笔记
lang: zh-Hans
en_url: /notes/
permalink: /zh-hans/notes/
---

# 笔记 {#notes}

<p class="section-intro">
简短的治理笔记。每篇只取一个技术问题，把它翻译成治理语言：风险是什么，谁来负责，实际上会怎样部署。每篇都为讲清楚一个想法而写，把技术工作变成别人能跟上、也能复用的治理推理。
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
