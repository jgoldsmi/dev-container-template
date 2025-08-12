
build:
  devcontainer build --workspace-folder .
  devcontainer up --workspace-folder .
  devcontainer run-user-commands --workspace-folder .
  devcontainer exec --workspace-folder . -- ./.devcontainer/postCreateCommand.sh

up:
  devcontainer up --workspace-folder .

shell:
  devcontainer exec --workspace-folder . -- /usr/bin/fish --login --interactive

stop:
  devcontainer exec --workspace-folder . -- hostname | xargs -r docker stop

rm:
  devcontainer exec --workspace-folder . -- hostname | xargs -r -I {} sh -c 'docker stop {} && docker rm {}'


