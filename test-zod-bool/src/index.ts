import { z } from 'zod'

export const booleanStrict = z.string().transform<boolean>((v, ctx) => {
  v = v.toLowerCase();
  switch (v) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      ctx.addIssue({
        code: z.ZodIssueCode.invalid_type,
        expected: z.ZodParsedType.boolean,
        received: z.ZodParsedType.string,
        message: 'Expected "true" or "false"',
      });
      return false;
  }
});

const main = async function() {
    const envSchema = z.object({
        a: booleanStrict,
        b: booleanStrict,
    })

    const envParse = envSchema.safeParse(process.env)

    if (!envParse.success) {
        console.log(JSON.stringify(envParse.error))
        process.exit(1)
    }

    const env = envParse.data
    console.log('a', env.a)
    console.log('b', env.b)
}

main()
