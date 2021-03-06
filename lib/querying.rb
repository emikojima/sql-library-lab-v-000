def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, year
  FROM books
  INNER JOIN series
  ON books.series_id = series.id
  WHERE books.series_id = 1
  GROUP by books.title
  ORDER by year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, motto
  FROM characters
  GROUP by characters.name
  ORDER by length(motto)
  DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP by species
  ORDER by COUNT(species)
  DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON authors.id = series.author_id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id
  GROUP by authors.name"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN characters
  ON series.id = characters.series_id
  WHERE characters.species = 'human'
  GROUP by series.title
  ORDER by COUNT(characters.species = 'human')
  DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(book_id)
  FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  GROUP by characters.name
  ORDER by COUNT(book_id)
  DESC"
end
