class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end
 
  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(people_params)
      redirect_to people_path
    else
      render :edit
    end 

  def destroy
    @person = Person.find(params[:id]).destroy #find the page we want to destroy
    redirect_to people_path
  end
  end

  def new
    @person = Person.new
  end
  def create
    @person = Person.new(people_params)
    if @person.save
     redirect_to people_path
    else 
     render :new
   end
  end 
  
  private
  def people_params
    params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
 end 

 
end
