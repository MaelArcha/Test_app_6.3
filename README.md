# README

<h2 class="text-center mt-4"> <%= @article.title %> </h2>
<div class= "container">
  <div class = "row justify-content-md-center">
    <div class= "col-8 mt-4">
      <div class="card text-center shadow-lg mb-5 bg-white rounded">
        <div class="card-header">
          By <%= @article.user.username %>
        </div>
        <div class="card-body">
          <div class="card-text text-start"><%= simple_format(@article.description)%>
          </div>
          <%= link_to "Edit", edit_article_path(@article), class:"btn btn-outline-primary"%>
          <%= link_to "Delete", article_path(@article), method: :delete, data: {confirm: "Are you sure? "} , class:"btn btn-outline-danger"%>
        </div>
        <div class="card-footer text-muted">
          <small> Created <%= time_ago_in_words(@article.created_at)%> ago,
          Edited <%= time_ago_in_words(@article.updated_at)%> ago.
            </small>
        </div>
      </div>
    </div>
</div>
