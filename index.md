---
---

# About Me

I'm a PhD student at Cisco Systems and the [LTCI
laboratory](https://www.telecom-paris.fr/en/research/laboratories/information-processing-and-communication-laboratory-ltci)
of Telecom Paris. I'm mainly working on scalable end-to-end encryption solutions
for real-time communications. My doctoral advisor is [Jean-Louis
  Rougier](https://perso.telecom-paristech.fr/rougierj/) at Telecom Paris and
  I'm supervised by [Luca
  Muscariello](https://sites.google.com/view/lucamuscariello/) at Cisco Systems.

Before that, I graduated from [Imperial
College](https://www.imperial.ac.uk/study/pg/computing/secure-software-systems/)
of a MSc in Computing Security and Reliability in 2019 and from [Telecom
Paris](https://www.telecom-paris.fr/en/home) of a *Diplôme d’ingénieur* (MSc in
Engineering) in 2020.

## Pages
* [Resume]({% link assets/docs/resume_en.pdf %})
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
