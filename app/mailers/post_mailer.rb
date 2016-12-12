class PostMailer < ActionMailer::Base
  default from: "from@example.com"

  def post_email(user, post)
    @title = post.title
    @content = post.content
    mail to: user.email, subject: "記事を投稿しました"
  end


end
