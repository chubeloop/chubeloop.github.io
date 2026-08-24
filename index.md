---
layout: default
---

<section markdown="1">
## Biography

<img class="profile-picture" src="images/kyojun_profile.jpg">

{{ site.data.profile.bio }}

{% if site.data.profile.email %}<a href="mailto:{{ site.data.profile.email }}"><img class="icon" src="images/gmail.svg" alt="Email"></a>{% endif %}<a href="{{ site.data.profile.github }}"><img class="icon" src="images/github.svg" alt="GitHub"></a><a href="{{ site.data.profile.linkedin }}"><img class="icon" src="images/linkedin.svg" alt="LinkedIn"></a>{% if site.data.profile.scholar %}<a href="{{ site.data.profile.scholar }}"><img class="icon" src="images/googlescholar.svg" alt="Google Scholar"></a>{% endif %}
</section>

<section markdown="1">
## Research Interests

{% for i in site.data.interests %}* {{ i }}
{% endfor %}
</section>

<section markdown="1">
## Education

{% for e in site.data.education %}* **{{ e.period }}**: {{ e.degree }}, {{ e.school }}{% if e.advisor %} (Advisor: {% if e.advisor_link %}<a href="{{ e.advisor_link }}">{{ e.advisor }}</a>{% else %}{{ e.advisor }}{% endif %}){% endif %}{% if e.logo %} <img class="edu-logo" src="{{ e.logo }}" alt="">{% endif %}
{% endfor %}
</section>

<section markdown="1">
## Work Experiences

{% for w in site.data.experience %}* **{{ w.period }}**: {{ w.org }}, {{ w.role }}{% if w.logo %} {% if w.logo_link %}<a href="{{ w.logo_link }}"><img class="edu-logo" src="{{ w.logo }}" alt=""></a>{% else %}<img class="edu-logo" src="{{ w.logo }}" alt="">{% endif %}{% endif %}
{% endfor %}
</section>

<section markdown="1">
## Publications

A curated publication list will be added soon.
</section>

<section markdown="1">
## Patents

### Domestic Patent Applications

{% for p in site.data.patents %}
* **{{ p.title_en }}**  
  *{{ p.title_ko }}*  
  {{ p.authors }}  
  {{ p.meta }}
{% endfor %}
</section>
