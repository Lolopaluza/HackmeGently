class SkillsController < ApplicationController

 def index
   @skills = Skill.order(created_at: :asc)
   render json: { skills: @skills }
 end

 def create
   @skill = Skill.new(skill_params)

   if @skill.save
     render json: { skill: @skill, location: skill_url(@skill), notice: 'Skill was successfully created.' }
   else
     render json: { errors: @skill.errors, notice: 'Try again' }
   end
 end

 def show
   @skill = Skill.find(params[:id])
   render json: { skill: @skill }
 end

 def update
   @skill = Skill.find(params[:id])
   if @skill.update(skill_params)
     render json: { skill: @skill, notice: 'Skill was successfully updated.' }
   else
     render json: { errors: @skill.errors, notice: 'Try again' }
   end
 end

 def destroy
   @skill = Skill.find(params[:id])
   if @skill.destroy
     render json: { skill: nil, notice: 'Skill was successfully deleted.' }
   else
     render json: { errors: @skill.errors, notice: 'Try again' }
   end
 end

 protected

 def skill_params
   params.require(:skill).permit(:name)
 end
end
