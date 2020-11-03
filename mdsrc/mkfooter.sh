#!/bin/bash
echo copyright $(git config user.name) $(date +"%Y")  email: $(git config user.email) > deck.footer
