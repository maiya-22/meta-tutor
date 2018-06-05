require 'faker'

# @user_id = 1
# @user_id_two = 2
# @user_id_three = 3


# @user_one = User.find(1)
# @user_one.name = "Chuck"

# @user_two = User.find(2)
# @user_two.name = "Charlie"

# @user_three = User.find(3)
# @user_three.name = "Sam"

# @tutorial = Tutorial.create!(
#     title: "Optional Chaining Operator in JavaScript",
#     author: "MPJ",
#     url: "https://www.youtube.com/embed/0X1Ns2NRfks",
#     format: "video",
#     user_id: 1
# )


# @video = Video.create(
#     playlist: "Learning JS",
#     channel: "Fun Fun Functions",
#     duration: 9,
#     tutorial_id: 1
# )

# @question = Question.create!(
#     title: "How does this work?",
#     content: "I don't understand what is going on at this point in the tutorial.  Can someone please help me to understand what is going on?  What is he talking about, when he says x?",
#     status: "open",
#     time: 3,
#     tutorial_id: 1,
#     user_id: 1
# )

# @question_id = @question.id

# Comment.create(
#     content: "I like your Question.  I had the same one!  Thanks",
#     user_id: @user_id_two
#     question_id: 1
# )

# Comment.create(
#     content: "Can you please clarify  your question, so that I can better answer it?  Thanks!",
#     question_id: @question_id
# )

# @answer = Answer.create!(
#     content: "I know the answer to your question, and I have lots of information to give you.  Here is some information to help you to understand.  I hope it helps.",
#     votes: 0,
#     question_id: 1,
#     user_id: 2
# )

# Comment.create(
#     content: "Can you please explain more about your answer?  What do you mean by x, y,z?",
#     answer_id: 1,
#     user_id: 1
# )

# Comment.create(
#     content: "Yes, and can you also explain more about some other things in your answer?  Thanks!",
#     answer_id: 1,
#     user_id: 3
# )


# @answer_two = Answer.create!(
#     content: "I have some more information about your question.  I hope it helps too",
#     votes: 0,
#     question_id: 1,
#     user_id: 3
# )

# Comment.create(
#     content: "Could you clarify a point about your answer?",
#     answer_id: 2,
#     user_id: 2
# )

# Comment.create(
#     content: "Sure, here is the clarification.  Hope it helps!",
#     answer_id: 2,
#     user_id: 3
# )



@tags = ['JavaScript', 'fun fun functions', 'chaining']
@tags.each do |tag_name|
    @tag = Tag.create(
        name: tag_name,
    )
end







# create a user by sigining up on the site.  The user will have id = 1
# this is needed, in order for the rest of the seeds to work
# need to add form field to enter user name when signing up:
# for now:
# @user = User.find(1)
# @user.name = "Chuck"
# @user.save

# @tutorias_with_format_chapter_ids = []
# @tutorias_with_format_video_ids = []

# @tutorial = Tutorial.create(
#         title: "Optional Chaining Operator in JavaScript",
#         author: "mpj",
#         url: "https://www.youtube.com/embed/0X1Ns2NRfks",
#         format: 'video',
#         user_id: 1
# )
# @tutorias_with_format_video_ids.push(@tutorial.id)

# @tutorial = Tutorial.create(
#         title: "Optional Chaining Operator in JavaScript",
#         author: "mpj",
#         url: "https://www.youtube.com/embed/0X1Ns2NRfks",
#         format: 'chapter',
#         user_id: 1
#     )
# @tutorias_with_format_chapter_ids.push(@tutorial.id)


# @chapter_ids
# @tutorias_with_format_chapter_ids.each do |id|
#     @chapter = Chapter.create!(
#         tutorial_id: id,
#         start_page: 1,
#         end_page:10,
#         book_title: "Eloquent JS",
#         book_edition: "3rd Edition",
#         chapter: 3
#     )
#     @chapter_ids.push(@chapter.id)
# end


# @video_ids = []
# @tutorias_with_format_video_ids.each do |id|
#     @video = Video.create!(
#         tutorial_id: id,
#         duration: 10.5,
#         playlist:"JavaScript Foundations",
#         channel: "fun fun functions"
#     )
#     @video_ids.push(@video.id)
# end


# @question_ids = []
# @video_ids.each do |id|
#     @question = Question.create(
#         title: "What is happening in this tutorial?",
#         content: "I am so lost.  Could someone tell me what the guy is saying in this tutorial?",
#         status: "open",
#         level: "intermediate",
#         page: rand(1...10),
#         user_id: 1,
#         video_id: id
#     )
#     @question_ids.push(@question.id)
# end

# create categories for the tutorials:
# @tutorial_categories = ["javascript", "html", "css", "react","mongodb", "beginner", "intermediate", "advanced", "sass", "fun fun functions"]
# @tag_ids = []
# @tutorial_categories.each do |category|
#     @tag = Tag.create!(
#         name: category
#     )
#     @tag_ids.push(@tag.id)
# end


# create ten tutorials
# @tutorial_ids = []
# 5.times do |num|
#     @tutorial = Tutorial.create!(
#         title: "Optional Chaining Operator in JavaScript",
#         author: "mpj",
#         url: "https://www.youtube.com/embed/0X1Ns2NRfks",
#         format: 'video',
#         user_id: 1
#     )
#     @tutorial_ids.push(@tutorial.id)
# end


# 5.times do |num|
#     @tutorial = Tutorial.create!(
#         title: "How to Write JavaScript",
#         author: "Leonard Cohen",
#         url: "https://bootswatch.com/_assets/img/refs/eloquentjavascript.png",
#         format: 'chapter',
#         user_id: 1
#     )
#     @tutorial_ids.push(@tutorial.id)
# end



# create videos for half of the tutorials
# @video_ids = []
# (0..4).each do |index|
#     @video = Video.create!(
#         tutorial_id: @tutorial_ids[index],
#         duration: 10.5,
#         playlist:"the learning series",
#         channel: "fun fun functions"
#     )
#     @video_ids.push(@video.id)
# end


# create chapters for the other half of the tutorials
# @chapter_ids = []
# (5..9).each do |index|
#     @chapter = Chapter.create!(
#         tutorial_id: @tutorial_ids[index],
#         start_page: 1,
#         end_page:10,
#         book_title: "Eloquent JS",
#         book_edition: "3rd Edition",
#         chapter: 3
#     )
#     @chapter_ids.push(@chapter.id)
# end




# make 10 questions for each tutorial:
# @question_ids = []
# @tutorial_ids.each do |id|
#     @tutorial = Tutorial.find(id)
#     if(@tutorial.format == 'chapter')
#         10.times do
#             @question = Question.create(
#                 title: "What is happening in this tutorial?",
#                 content: "I am so lost.  Could someone tell me what the guy is saying in this tutorial?",
#                 status: "open",
#                 level: "intermediate",
#                 page: rand(1...10),
#                 user_id: 1,
#                 tutorial_id: id
#             )
#             @question_ids.push(@question.id)
#             p @question_ids
#             p @question
#         end
#     elsif (Tutorial.find(id).format == 'video')
#         10.times do
#             @question = Question.create(
#                 title: "What is happening in this tutorial?",
#                 content: "I am so lost.  Could someone tell me what the guy is saying in this tutorial?",
#                 status: "open",
#                 level: "intermediate",
#                 time: rand(1...10),
#                 user_id: 1,
#                 tutorial_id: id
#             )
#             @question_ids.push(@question.id)
#         end
#     end
# end

# Make 3 answers for each of the questions:
# @answer_ids = []
# @question_ids.each do |id|
#     4.times do |num|
#         @answer = Answer.create!(
#             content: "I am here to answer your question.  If you look at it like this, you see it makes senense",
#             votes: 5,
#             approved: false,
#             question_id: id,
#             user_id: 1
#         )
#         @answer_ids.push(@answer.id)
#     end
# end

# give each question two comments
# @question_ids.each do |id|
#     p id
   
#         @comment = Comment.create!(
#             content: "I wanted to tell you that I though your question was great.",
#             question_id: id,
#             user_id: 1
#         )
#         p @comment
  
    
# end
# p @question_ids

# give each answer two comments

# @answer_ids.each do |id|
#     2.times do 
#         @comment = Comment.create!(
#             content: "I am the content of a comment on an answer.",
#             answer_id: id,
#             user_id: 1
#         )
#     end
# end

