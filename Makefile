##
## EPITECH PROJECT, 2020
## FUN_day1_2020
## File description:
## Makefile
##

## USEFUL DEF ########################################
CC		=	ghc
RM		=	-rm -f
EXT		=	.hs
#######################################################

## Sources ############################################
MAIN		=	$(addsuffix $(EXT), DoOp)

SRC_DIR		=	./src/

SRC_FILES	=	PushswapChecker		\
				PushswapFunction

SRC			=	$(addsuffix $(EXT), $(addprefix $(SRC_DIR), $(SRC_FILES)))

TEST_MAIN	=	$(addsuffix $(EXT), UnitTestMain)

TEST_DIR	=	test/UnitTest

TEST_FILES	=	PushSwapChecker	\
				PushSwapFunction

TEST_SRC	=	$(addsuffix .hs, $(addprefix $(TEST_DIR), $(TEST_FILES)))
#######################################################

## FLAGS ##############################################
CFLAGS		=	-Wall -Wextra
#######################################################

## NAMES ##############################################
BIN			=   doop
TEST_BIN	=	unit_test
#######################################################

## RULES ##############################################
.PHONY: all
all:	$(BIN)
$(BIN): $(MAIN) $(SRC)
	$(CC) -o $(BIN) $(MAIN)

.PHONY: tests_run
tests_run: $(TEST_BIN) fclean
$(TEST_BIN): $(TEST_MAIN) $(TEST_SRC)
	$(CC) -o $(TEST_BIN) $(TEST_MAIN) $(TEST_SRC) $(SRC)
	./$(TEST_BIN)
	@$(RM) $(TEST_BIN)

## Clear rules
.PHONY: clean
clean:
	@$(RM) $(BIN)
	@$(RM) $(TEST_BIN)

.PHONY: fclean
fclean: clean
	@$(RM)	*.hi
	@$(RM)	*.o
	@$(RM)	$(TEST_DIR)*.hi
	@$(RM)	$(TEST_DIR)*.o
	@$(RM)	$(SRC_DIR)*.hi
	@$(RM)	$(SRC_DIR)*.o

.PHONY: re
re:	fclean all clean
