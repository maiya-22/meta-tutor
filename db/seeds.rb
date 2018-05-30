# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# create a user by sigining up on the site.  The user will have id = 1


# create ten tutorials
@tutorial_ids = []
5.times do |num|
    @tutorial = Tutorial.create(
        title: "Optional Chaining Operator in JavaScript",
        author: "mpj",
        url: "https://www.youtube.com/watch?v=FKRVqtP8o48",
        format: 'video',
        user_id: 1
    )
    @tutorial_ids.push(@tutorial.id)
end

5.times do |num|
    @tutorial = Tutorial.create(
        title: "Optional Chaining Operator in JavaScript",
        author: "mpj",
        url: "https://www.youtube.com/watch?v=FKRVqtP8o48",
        format: 'chapter',
        user_id: 1
    )
    @tutorial_ids.push(@tutorial.id)
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
(5..10).each do |num|
    @chapter = Chapter.create(
        tutorial_id: @tutorial_ids[num],
        start_page: 1,
        end_page:10,
        book_title: "I am a book title",
        book_edition: "I am a book title"
    )
    @chapter_ids.push(@chapter.id)
end

