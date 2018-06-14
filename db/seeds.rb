# 100.times do |i|
#   Manuscript.create(
#     title: "Article ##{i} title."
#   )
# end
#
# 1000.times do |i|
#   citer = rand(99)
#   citee = rand(99)
#   Citation.create(
#     citer_id: citer,
#     citee_id: citee
#   )
# end
Manuscript.create(title: "Original paper")

Manuscript.create(title: "Second tier 1")
Manuscript.create(title: "Second tier 2")
Manuscript.create(title: "Second tier 3")

Manuscript.create(title: "Third tier 1")
Manuscript.create(title: "Third tier 2")
Manuscript.create(title: "Third tier 3")
Manuscript.create(title: "Third tier 4")
Manuscript.create(title: "Third tier 5")
Manuscript.create(title: "Third tier 6")
Manuscript.create(title: "Third tier 7")
Manuscript.create(title: "Third tier 8")
Manuscript.create(title: "Third tier 9")

Citation.create(citer_id: 2, citee_id: 1)
Citation.create(citer_id: 3, citee_id: 1)
Citation.create(citer_id: 4, citee_id: 1)

Citation.create(citer_id: 5, citee_id: 2)
Citation.create(citer_id: 6, citee_id: 2)
Citation.create(citer_id: 7, citee_id: 2)

Citation.create(citer_id: 8, citee_id: 3)
Citation.create(citer_id: 9, citee_id: 3)
Citation.create(citer_id: 10, citee_id: 3)

Citation.create(citer_id: 11, citee_id: 4)
Citation.create(citer_id: 12, citee_id: 4)
Citation.create(citer_id: 13, citee_id: 4)
