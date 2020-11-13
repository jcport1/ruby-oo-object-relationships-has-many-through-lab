require 'pry'

class Artist

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end 

    def self.all
        @@all
    end 

    def songs #using an instance method to call on the song class to return all artists that match self

        Song.all.select do |song|
            song.artist == self
        end 
    end 

    def genres #using created song method (originally a class method) that returns all artists & then calling
        #on the object with the genre method to return appropriate results 

        songs.map do |song|
            song.genre 
        end 
    end 

    def new_song(song_name, genre)

        Song.new(song_name,self,genre) #create a new song by using song primative and passing in arguments
        #including self* to make new song object

    end 


end 