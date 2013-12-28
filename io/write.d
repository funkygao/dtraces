syscall::write:entry
/pid != $pid/
{
        printf("%s", stringof(arg1)); /* incorrect use of arg1 */
        printf("%s", copyinstr(arg1)); /* incorrect use of arg1 */
}
