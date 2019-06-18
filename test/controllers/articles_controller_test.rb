require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test '#create' do
    post articles_path, params: { article: { title: '12345', text: 'ehu' } }
    assert_response :redirect
  end

  test '#edit' do
    article = articles(:one)
    get edit_article_path(article)
    assert_response :success
  end

  test '#update' do
    article = articles(:one)
    attrs = { title: '12345', text: 'ehu' }
    patch article_path(article), params: { article: attrs }
    assert_response :redirect

    article.reload

    assert { article.title == attrs[:title] }
  end

  test '#destroy' do
    article = articles(:one)
    delete article_path(article)
    assert_response :redirect

    assert { !Article.exists?(article.id) }
  end
end
