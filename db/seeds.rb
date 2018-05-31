# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# create a user by sigining up on the site.  The user will have id = 1
# this is needed, in order for the rest of the seeds to work

# create ten tutorials
@tutorial_ids = []

# create categories for the tutorials:
@tutorial_categories = ["javascript", "html", "css", "react","mongodb"]
@tag_ids = []
@tutorial_categories.each do |category|
    @tag = Tag.create!(
        name: category
    )
    @tag_ids.push(@tag.id)
end

5.times do |num|
    @tutorial = Tutorial.create(
        title: "Optional Chaining Operator in JavaScript",
        author: "mpj",
        url: "https://www.youtube.com/watch?v=FKRVqtP8o48",
        format: 'video',
        user_id: 1
    )
    @tutorial_ids.push(@tutorial.id)
    # associate the tutorial with a category (tag)
    TagsTutorial.create(
        tutorial_id: @tutorial.id,
        tag_id: @tag_ids[num-1]
    )
end

5.times do |num|
    @tutorial = Tutorial.create!(
        title: "Optional Chaining Operator in JavaScript",
        author: "mpj",
        url: "https://www.youtube.com/watch?v=FKRVqtP8o48",
        format: 'chapter',
        user_id: 1
    )
    @tutorial_ids.push(@tutorial.id)
    TagsTutorial.create(
        tutorial_id: @tutorial.id,
        tag_id: @tag_ids[num-1]
    )
end

# create videos for half of the tutorials
@video_ids = []
(0..4).each do |num|
    @video = Video.create(
        tutorial_id: @tutorial_ids[num],
        duration: ActiveSupport::Duration.build(46).parts,
        playlist:"playlist",
        channel: "channel"
    )
    @video_ids.push(@video.id)
end

# create chapters for half of the tutorials
@chapter_ids = []
(5..9).each do |num|
    @chapter = Chapter.create(
        tutorial_id: @tutorial_ids[num],
        start_page: 1,
        end_page:10,
        book_title: "I am a book title",
        book_edition: "I am a book title"
    )
    @chapter_ids.push(@chapter.id)
end

# make 10 questions for each tutorial:
@question_ids = []
@tutorial_ids.each do |id|
    if(Tutorial.find(id).format == 'chapter')
        10.times do
            @question = Question.create(
                title: "title",
                content: "content",
                status: "open",
                level: "intermediate",
                page: rand(1...100),
                user_id: 1,
                tutorial_id: id
            )
            @question_ids.push(@question.id)
        end
    elsif (Tutorial.find(id).format == 'video')
        10.times do
            @question = Question.create(
                title: "title",
                content: "content",
                status: "open",
                level: "intermediate",
                time: rand(1...100),
                user_id: 1,
                tutorial_id: id
            )
            @question_ids.push(@question.id)
        end
    end
end

# Make 3 answers for each of the questions:
@answer_ids = []
@question_ids.each do |id|
    4.times do |num|
        @answer = Answer.create(
            content: "i am some content of an answer.",
            votes: 5,
            approved: true,
            question_id: id,
            user_id: 1
        )
        @answer_ids.push(@answer.id)
    end
end

# give each question two comments
@question_ids.each do |id|
    2.times do 
        @comment = Comment.create!(
            content: "I am the content of a comment on a question.",
            question_id: id,
            user_id: 1
        )
    end
end

# give each answer two comments

@answer_ids.each do |id|
    2.times do 
        @comment = Comment.create!(
            content: "I am the content of a comment on an answer.",
            answer_id: id,
            user_id: 1
        )
    end
end

