Discipline.create(name: "Humanities")
Discipline.create(name: "Social Sciences")
Discipline.create(name: "Natural Sciences")
Discipline.create(name: "Formal Sciences")
Discipline.create(name: "Professions and Applied Sciences")

Discipline.create(name: "Anthropology", parent_id: 1)
Discipline.create(name: "History", parent_id: 1)
Discipline.create(name: "Linguistics and Languages", parent_id: 1)
Discipline.create(name: "Philosophy", parent_id: 1)
Discipline.create(name: "Religion", parent_id: 1)
Discipline.create(name: "The Arts", parent_id: 1)

Discipline.create(name: "Economics", parent_id: 2)
Discipline.create(name: "Geography", parent_id: 2)
Discipline.create(name: "Interdisciplinary Studies", parent_id: 2)
Discipline.create(name: "Political Science", parent_id: 2)
Discipline.create(name: "Psychology", parent_id: 2)
Discipline.create(name: "Sociology", parent_id: 2)

Discipline.create(name: "Biology", parent_id: 3)
Discipline.create(name: "Chemistry", parent_id: 3)
Discipline.create(name: "Earth Sciences", parent_id: 3)
Discipline.create(name: "Physics", parent_id: 3)
Discipline.create(name: "Space Sciences", parent_id: 3)

Discipline.create(name: "Computer Sciences", parent_id: 4)
Discipline.create(name: "Logic", parent_id: 4)
Discipline.create(name: "Mathematics", parent_id: 4)
Discipline.create(name: "Systems Science", parent_id: 4)

Discipline.create(name: "Agriculture", parent_id: 5)
Discipline.create(name: "Architecture and Design", parent_id: 5)
Discipline.create(name: "Business", parent_id: 5)
Discipline.create(name: "Divinity", parent_id: 5)
Discipline.create(name: "Education", parent_id: 5)
Discipline.create(name: "Engineering and Technology", parent_id: 5)
Discipline.create(name: "Environmental Studies and Forestry", parent_id: 5)
Discipline.create(name: "Family and Consumer Science", parent_id: 5)
Discipline.create(name: "Human Physical Performance and Recreation", parent_id: 5)
Discipline.create(name: "Journalism, Media Studies and Communication", parent_id: 5)
Discipline.create(name: "Law", parent_id: 5)
Discipline.create(name: "Library and Museum Studies", parent_id: 5)
Discipline.create(name: "Medicine", parent_id: 5)
Discipline.create(name: "Military Sciences", parent_id: 5)
Discipline.create(name: "Public Administration", parent_id: 5)
Discipline.create(name: "Social Work", parent_id: 5)
Discipline.create(name: "Transportation", parent_id: 5)

for i in 1..100 do
  Manuscript.create(
    title: Faker::Book.title,
    discipline_id: Discipline.all.sample.id,
    abstract: Faker::Lorem.paragraph(5, true, 5),
    publication_date: Faker::Date.between(200.years.ago, Date.today)
  )
end

manuscripts = Manuscript.all
for i in 1..300 do
  manuscript = manuscripts.sample
  possible_citees = manuscripts - [manuscript] - manuscript.works_cited - manuscript.cited_by
  Citation.create(citer_id: manuscript.id, citee_id: possible_citees.sample.id)
end
