require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "should create movie" do
    visit movies_url
    click_on "New movie"

    fill_in "Category", with: @movie.category
    fill_in "Duration", with: @movie.duration
    fill_in "Language", with: @movie.language
    fill_in "Movie name", with: @movie.movie_name
    fill_in "Numerical order", with: @movie.numerical_order
    fill_in "Premiere", with: @movie.premiere
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "should update Movie" do
    visit movie_url(@movie)
    click_on "Edit this movie", match: :first

    fill_in "Category", with: @movie.category
    fill_in "Duration", with: @movie.duration
    fill_in "Language", with: @movie.language
    fill_in "Movie name", with: @movie.movie_name
    fill_in "Numerical order", with: @movie.numerical_order
    fill_in "Premiere", with: @movie.premiere
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie" do
    visit movie_url(@movie)
    click_on "Destroy this movie", match: :first

    assert_text "Movie was successfully destroyed"
  end
end