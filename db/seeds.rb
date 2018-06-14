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
Citation.create(citer_id: 2, citee_id: 1)
Citation.create(citer_id: 3, citee_id: 1)
Citation.create(citer_id: 4, citee_id: 1)
