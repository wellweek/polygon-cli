
INSTALL_DIR:=~/go/bin/
BIN_NAME:=polycli
BUILD_DIR:=./out

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

build: $(BUILD_DIR)
	go build -o $(BUILD_DIR)/$(BIN_NAME) main.go

install: build
	$(RM) $(INSTALL_DIR)/$(BIN_NAME)
	cp $(BUILD_DIR)/$(BIN_NAME) $(INSTALL_DIR)

clean:
	$(RM) -r $(BUILD_DIR)

test:
	go test github.com/maticnetwork/polygon-cli/...
