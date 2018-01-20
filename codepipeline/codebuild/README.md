## Simple Python Example for CodeBuild
The purpose of this simple Python example is to create a dummy AWS CodeBuild project. We are not doing anything fancy, just a simple "Hello World" example and then package the movies database for deploy.

### Create Build Project JSON File
Pleaes check `movies-db-proj.json` file in this directory.
You need to run:
```bash
$ aws codebuild create-project --cli-input-json file://movies-db-proj.json
```

### 