#!/usr/bin/env sh
rm -rf ./generated
mkdir -p ./generated/go
mkdir -p ./generated/dotnet
protoc --go_out=./generated/go --go_opt=paths=source_relative --go-grpc_out=./generated/go --go-grpc_opt=paths=source_relative agent_manager.proto
protoc --csharp_out=./generated/dotnet agent_manager.proto
