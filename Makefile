PORT   = 4000
DOMAIN = 'note.thefoxhut.com'

server: init 
	@hexo s -p $(PORT)
	
#deploy: init
#	@cd public/ && \
#	touch CNAME && echo $(DOMAIN) > CNAME && \
#	echo "Start deploy ..." && \
#	hexo d
	
#deploy_without_cname: init
#	@echo "Start deploy ..." && \
#	hexo d

deploy: init
	@echo "Start deploy ..." && \
	hexo d

init:
	@echo "Initializing ..." && \
	hexo clean && \
	hexo g