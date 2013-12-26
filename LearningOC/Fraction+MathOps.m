@implementation Fraction (MathOps)
-(Fraction *) mul: (Fraction *) f {
   Fraction  *result = [[Fraction alloc] init];

   result.numerator = self.numerator * f.numerator;
   result.denominator = self.denominator * f.denominator;
   [result reduce];

   return result;
}
@end