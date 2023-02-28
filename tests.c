#include <criterion/criterion.h>
#include "lib.h"

Test(misc, passing) {
    cr_expect(say_two() == 2, "sayTwo returns a 2");
}
