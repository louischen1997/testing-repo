
-- Make sure your variables are all "local".
-- Also, it is a good practice to build a module object matching the module name.
local example = {}

function example.complexThing(args)
  print("Running complexThing with arguments: "..to_json(args))
end
-- qa test update version
-- Module requires a return statement
return example
