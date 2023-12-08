COSIM_API_PROTO_FILES=$(shell find risenlighten/lasvsim/process_task/api/cosim -name *.proto)

cosimgo:
	protoc --proto_path=./ \
	       --go_out=./ \
		   --go-grpc_out=./ \
	       $(COSIM_API_PROTO_FILES)