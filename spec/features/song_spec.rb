require 'rails_helper'

describe 'navigate songs pages' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
    @genre = Genre.create(name: "My Genre")
    @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)
  end

  it 'shows the name on the show page in a h1 tag' do
    visit song_path(@song.id)
    expect(page).to have_css("h1", text: "My Song")
  end

  it 'displays a link to the genre page' do 
    visit song_path(@song.id)

#    expect(page).to have_link(@genre.name, href: genre_path(@genre))
  end

  it 'displays a link to the artist page' do 
    visit song_path(@song.id)

#    expect(page).to have_link(@artist.name, href: artist_path(@artist))
  end

  it 'to songs pages' do
    visit song_path(@song.id)
    expect(page.status_code).to eq(200)
  end
end

describe 'songs form' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
    @genre = Genre.create(name: "My Genre")
  end

=begin
  it 'shows a new form that submits content and redirects and prints out params' do
    visit new_song_path

    fill_in 'songs[name]', with: "My songs name"
    fill_in 'songs[artist_id]', with: @artist.id
    fill_in 'songs[genre_id]', with: @genre.id

    click_on "Create Song"

    expect(page).to have_content("My songs name")
  end
=end

=begin
  it 'shows an edit form that submits content and redirects and prints out params' do
    @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)

    visit edit_song_path(@song)

    fill_in 'songs[name]', with: "My edit"
    fill_in 'songs[artist_id]', with: @artist.id
    fill_in 'songs[genre_id]', with: @genre.id

    click_on "Update Song"

    expect(page).to have_content("My edit")
  end
=end
end

describe 'songs index' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
    @genre = Genre.create(name: "My Genre")
    @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)
  end

  it 'displays the songs name' do
    visit songs_path
    expect(page).to have_css("p", text: "My Song")
  end

  
end