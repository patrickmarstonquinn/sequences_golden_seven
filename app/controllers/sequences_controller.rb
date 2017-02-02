class SequencesController < ApplicationController
  def guesses
    @list_of_guesses = Guess.all
    render("/guesses.html.erb")
  end

  def new_form

    render("/guesses/new.html.erb")
  end

  def create_row

    y = Guess.new
    y.first_number = params[:first_number]
    y.second_number = params[:second_number]
    y.third_number = params[:third_number]

    y.save

    # redirect_to("google.com")
    # render("/guesses/create_guess.html.erb")
    redirect_to("http://localhost:3000/guesses")
  end

  def show
    q = Guess.find_by({ :id => 4})
    # Guess.find(6)

    g = Guess.find(params[:the_row_id])
    # g = Guess.find(params[4])

    @first_num = q.first_number
    @second_num = q.second_number
    @third_num = q.third_number

    if @first_num < @second_num && @second_num < @third_num
      @obey_rule = "Yes!"
    else
      @obey_rule = "No!"
    end

    render("/guesses/4.html.erb")
  end

  def edit_form
        
    render("guesses/edit_form.html.erb")
  end
end
