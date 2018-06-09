require 'faker'

@user_id = 1
@user_id_two = 2
@user_id_three = 3


@user_one = User.find(1)
@user_one.name = "Chuck"
@user_one.save

@user_two = User.find(2)
@user_two.name = "Charlie"
@user_two.save

@user_three = User.find(3)
@user_three.name = "Sam"
@user_three.save



@tutorial = Tutorial.create!(
    title: "Optional Chaining Operator in JavaScript",
    author: "MPJ",
    url: "https://www.youtube.com/embed/0X1Ns2NRfks",
    format: "video",
    user_id: 1
)



@video = Video.create(
    playlist: "Learning JS",
    channel: "Fun Fun Functions",
    duration: 9,
    tutorial_id: 1
)



@question = Question.create!(
    title: "How does this work?",
    content: "I don't understand what is going on at this point in the tutorial.  Can someone please help me to understand what is going on?  What is he talking about, when he says x?",
    status: "open",
    time: 3,
    tutorial_id: 1,
    user_id: 1
)

@question_id = @question.id

Comment.create(
    content: "I like your Question.  I had the same one!  Thanks",
    user_id: @user_id_two,
    question_id: 1
)

Comment.create(
    content: "Can you please clarify  your question, so that I can better answer it?  Thanks!",
    question_id: @question_id
)

@answer = Answer.create!(
    content: "I know the answer to your question, and I have lots of information to give you.  Here is some information to help you to understand.  I hope it helps.",
    votes: 0,
    question_id: 1,
    user_id: 2
)

Comment.create(
    content: "Can you please explain more about your answer?  What do you mean by x, y,z?",
    answer_id: 1,
    user_id: 1
)

Comment.create(
    content: "Yes, and can you also explain more about some other things in your answer?  Thanks!",
    answer_id: 1,
    user_id: 3
)


@answer_two = Answer.create!(
    content: "I have some more information about your question.  I hope it helps too",
    votes: 0,
    question_id: 1,
    user_id: 3
)

Comment.create(
    content: "Could you clarify a point about your answer?",
    answer_id: 2,
    user_id: 2
)

Comment.create(
    content: "Sure, here is the clarification.  Hope it helps!",
    answer_id: 2,
    user_id: 3
)



@tags = ['JavaScript', 'fun fun functions', 'chaining']
@tags.each do |tag_name|
    @tag = Tag.create(
        name: tag_name,
    )
end





