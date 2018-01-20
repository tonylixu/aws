## Simple Python Example for CodeBuild
The purpose of this simple Python example is to create a dummy AWS CodeBuild project. We are not doing anything fancy, just a simple "Hello World" example and then package the movies database for deploy.

### Create Build Project JSON File
* Pleaes check `movies-db-proj.json` file in this directory.
* You need to run:
```bash
$ aws codebuild create-project --cli-input-json file://movies-db-proj.json
```
* Check project is created:
```bash
$ aws codebuild list-projects
{
    "projects": [
        "movies-db-proj"
    ]
}

``` 

### Upload Your Code to CodeCommit
Please see `codecommit` folder for instructions.

### Build You Artifact
Just simple go to CodeBuild, select your project, and build. (CLI version will come soon). After successful build, you should be able to see your artifacts in the destination location (AWS s3 in our example).