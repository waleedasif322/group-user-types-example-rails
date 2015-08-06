== README
Run: 

`rake db:setup`


Open a rails console, and create 2 users:

`User.create(:name => 'Donald Trump', :meta_type => 'Doctor')`

`User.create(:name => 'Jerry Springer', :meta_type => 'Patient')`


Then try creating a join table between them:

`Doctor.first.patients << Patient.last`

This creates a join table between the doctor and patient, but there are two problems:

    1. The `provider_type` is set to `User`, (because of the class name set in patient_provider_relation.rb). How would I set it to be the class_name of the provider type (e.g. Doctor, Nurse etc)?
    
    2. If I then do Patient.first.providers, I get a `NameError: uninitialized constant Patient::Provider`

