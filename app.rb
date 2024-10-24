require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_add = params.fetch("first_add").to_f
  @second_add = params.fetch("second_add").to_f


  @add_result = @first_add + @second_add
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_sub = params.fetch("first_sub").to_f
  @second_sub = params.fetch("second_sub").to_f
  @sub_result=@second_sub-@first_sub
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_mult = params.fetch("first_mult").to_f
  @second_mult = params.fetch("second_mult").to_f
  @mult_result=@first_mult *@second_mult
  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @first_div= params.fetch("first_div").to_f
  @second_div = params.fetch("second_div").to_f
  @div_result=@first_div/@second_div
  erb(:div_result)
end
