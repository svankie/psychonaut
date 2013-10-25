# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

experiences = [
  {
    title: "Fundiéndome Con La Eternidad",
    pseudonym: "svankie",
    substance: "LSD",
    dose: "200ug",
    votes: 3,
    happened_at: 3.weeks.ago.to_date,
    email: "svankie@gmail.com",
    report: "La verdad es que realmente me fundí con la eternidad."
  },
  {
    title: "Un Verdadero Adversario",
    pseudonym: "mbove",
    substance: "2C-P",
    dose: "9mg",
    votes: 5,
    happened_at: 10.weeks.ago.to_date,
    email: "martin.bove@hotmail.com",
    report: "Atravesé la última capa de la realidad."
  },
  {
    title: "Alguien Por Favor Ayúdeme",
    pseudonym: "jpkakkaroto",
    substance: "Cannabis",
    dose: "2 fat joints",
    votes: 7,
    happened_at: 2.weeks.ago.to_date,
    email: "jp_kakkaroto@hotmail.com",
    report: "Fumé hasta la mismísima muerte."
  }
]

Experience.create(experiences)
