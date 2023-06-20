#!/usr/bin/env bash
docker built -t pimachinelearning/raspi-builder .

docker tag pimachinelearning/raspi-builder:latest pimachinelearning/raspi-builder:latest

docker tag pimachinelearning/raspi-builder:latest ghcr.io/pimachinelearning/pimachinelearning/raspi-builder:latest

docker push pimachinelearning/raspi-os-lite:latest

docker push ghcr.io/pimachinelearning/pimachinelearning/raspi-builder:latest
