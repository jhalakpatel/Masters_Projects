#!/bin/bash

ps -ef | grep patel359 | grep leader.sh | awk '{print $2}' | xargs kill
ps -ef | grep patel359 | grep run.sh | awk '{print $2}' | xargs kill
ps -ef | grep patel359 | grep shuf | awk '{print $2}' | xargs kill
ps -ef | grep patel359 | grep Leader | awk '{print $2}' | xargs kill
