build:
	go build -o server main.go

run: build
	./server

watch:
	reflex -s -r '\.go$$' make run
	# Если не работает, может быть неверный путь, тогда
	#	~/go/bin/reflex -s -r '\.go$$' make run
	# Или Определите путь, в котором находится исполняемый файл reflex.
	# echo $HOME/go/bin - выполнить в консоли
	# export PATH=$PATH:~/go/bin - Добавьте этот путь в переменную PATH

