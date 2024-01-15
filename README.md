# kyusulib
My C Library For 42Seoul


## Compile
```bash
$ make
```

## Use
 - Include this lib into project that will use the libraries of kyusulib
 - Include kyusulib.h
 - Write lib files' name at project Makefile to compile

```Makefile
$(NAME)		:	$(OBJS) $(LIBFT_A) $(GNL_A) $(PRINTF_A)
				@$(CC) $(CFLAGS) -include$(HEAD) -L$(LIBFT) -lft -L$(GNL) -lgnl -L$(PRINTF) -lftprintf $(OBJS) -o $(NAME)
				@$(ECHO) "*** Linking complete."
```
## Etc
The reason why I didn't combine the lib files is because each lib files can be used seperately.
