---
---

# About Me

I'm a Network Research Engineer at Cisco in Paris, France since 2020. I'm mainly
working on scalable end-to-end encryption solutions for real-time
communications.

Before that, I graduated from [Imperial
College](https://www.imperial.ac.uk/study/pg/computing/secure-software-systems/)
of a MSc in Computing Security and Reliability in 2019 and from [Telecom
Paris](https://www.telecom-paris.fr/en/home) of a *Diplôme d’ingénieur* (MSc in
Engineering) in 2020.

## Pages
* [Resume]({% link assets/docs/resume.en.pdf %})
* [Projects]({% link projects.md %})
* [Lecture Notes]({% link lecture-notes.md %})

## Posts
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.date | date: "%F" }} – {{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
