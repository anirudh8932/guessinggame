#!/bin/bash

function guessinggame {
    local num_files=$(ls -1 | wc -l)
    local guess=-1

    while [[ $guess -ne $num_files ]]; do
        echo "How many files are in the current directory?"
        read guess
        if [[ $guess -lt $num_files ]]; then
            echo "Your guess is too low."
        elif [[ $guess -gt $num_files ]]; then
            echo "Your guess is too high."
        else
            echo "Congratulations! You guessed correctly."
        fi
    done
}

guessinggame
