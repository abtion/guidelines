---
layout: home
title: Abtion Guidelines
---

# Abtion Guidelines

## Philosophy

The guidelines are extracted from real problems we encountered and the solutions we have found along the way. These guidelines should be used as a default unless there is a good reason against it.

## Contribute

These guidelines are created with the help of the whole organization. Anyone is welcome to open a PR to any section of the guidelines.

Anything added to the guideline must have been extracted from a project.

{% assign directories = "" | split: ',' %}
{% for page in site.pages %}
{% unless directories contains page.dir %}
{% if page.name contains ".md" %}
{% assign directories = directories | push: page.dir %}
{% endif %}
{% endunless %}
{% endfor %}

---

{% assign sorteddirectories = directories | sort %}
{% for directory in sorteddirectories %}

{{ directory | remove_first: "/" | split: "" | reverse | join: "" | remove_first: "/"  | split: "" | reverse | join: "" | replace: "_", " " | replace: "/", " / " |  capitalize }}
{% for page in site.pages %}
{% if page.name contains ".md" and page.dir == directory %}

- [{{ page.name | replace: ".md", "" | capitalize | replace: "_", " " }}]({{site.baseurl}}/{{page.path | replace: ".md", ".html" }})
  {% endif %}
  {% endfor %}
  <br />
  {% endfor %}
