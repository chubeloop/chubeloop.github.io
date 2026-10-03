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

{% for w in site.data.experience %}* **{{ w.period }}**: {{ w.org }}, {{ w.role }}{% if w.advisor %} (Advisor: {% if w.advisor_link %}<a href="{{ w.advisor_link }}">{{ w.advisor }}</a>{% else %}{{ w.advisor }}{% endif %}){% endif %}{% if w.logo %} {% if w.logo_link %}<a href="{{ w.logo_link }}"><img class="edu-logo" src="{{ w.logo }}" alt=""></a>{% else %}<img class="edu-logo" src="{{ w.logo }}" alt="">{% endif %}{% endif %}
{% endfor %}
</section>

<section markdown="1">
## Publications
{% for c in site.data.publications %}
### {{ c.category }}

{% for p in c.items %}* **{{ p.title }}**<br>{{ p.authors }}<br>**[{{ p.venue }}]**
{% endfor %}
{% endfor %}
</section>

<section markdown="1">
## Patents
{% for c in site.data.patents %}
### {{ c.category }}

{% for p in c.items %}* **{{ p.title }}**<br>*{{ p.title_ko }}*<br>{{ p.inventors }}<br>{{ p.status }}
{% endfor %}
{% endfor %}
</section>
