{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block class %}index posts-expand{% endblock %}

{% block content %}

  {%- for post in page.posts.toArray() %}
    {{ partial('_macro/post.swig', {post: post, is_index: true}) }}
  {%- endfor %}

  {% include '_partials/pagination.swig' %}

  {#
  {%- for post in page.posts.toArray() %}
    {% if post.featured %}
      <div class="featured-post-card">
        <h2><a href="{{ url_for(post.path) }}">{{ post.title }}</a></h2>
        <p>{{ post.excerpt }}</p>
      </div>
    {% endif %}
  {%- endfor %}
  #}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
