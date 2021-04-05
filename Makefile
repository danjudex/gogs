env_init_fn = @test -f $(1).env || cp $(1).env.example $(1).env

up:
	@docker-compose up -d --build

env-init: 
	$(call env_init_fn)

install: env-init up

pull:
	@docker-compose pull 

update: pull up
