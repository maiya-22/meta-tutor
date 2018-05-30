# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

@tutorial_ids = []

10.times do |num|
    @tutorial = Tutorial.create(
        title: "Optional Chaining Operator in JavaScript",
        author: "mpj",
        url: "https://www.youtube.com/watch?v=FKRVqtP8o48",
        format: 'video',
        user_id: 1
    )
    @tutorial_ids.push(@tutorial.id)
end


@video_ids = []
5.times do |num|
    @video = Video.create(
        tutorial_id: @tutorial_ids[num-1],
        duration: ActiveSupport::Duration.build(46).parts,
        playlist:"playlist",
        channel: "channel"
    )
    @video_ids.push(@video.id)
end

# @video_ids = []
# 5.times do |num|
#     @video = Chapter.create(
#         tutorial_id: @tutorial_ids[@video_ids.length + num-1],
#         duration: ActiveSupport::Duration.build(46).parts,
#         playlist:"playlist",
#         channel: "channel"
#     )
#     @video_ids.push(@video.id)
# end

