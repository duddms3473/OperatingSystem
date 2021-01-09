
_seqdec_prio:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
            for (j = 0; j < 1024 * 10; j++)
                data[j]++;
    }
}
int main(int argc, char *argv[])
{
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	57                   	push   %edi
  12:	56                   	push   %esi
  13:	53                   	push   %ebx
  14:	51                   	push   %ecx
  15:	83 ec 18             	sub    $0x18,%esp
    if (argc < 2)
  18:	83 39 01             	cmpl   $0x1,(%ecx)
{
  1b:	8b 41 04             	mov    0x4(%ecx),%eax
    if (argc < 2)
  1e:	7e 44                	jle    64 <main+0x64>
    {
        printf(1, "test-case <number-of-children>\n");
        exit();
    }
    int N = atoi(argv[1]);
  20:	83 ec 0c             	sub    $0xc,%esp
  23:	ff 70 04             	pushl  0x4(%eax)
  26:	e8 55 04 00 00       	call   480 <atoi>

    int pids[N];
  2b:	83 c4 10             	add    $0x10,%esp
    int N = atoi(argv[1]);
  2e:	89 c6                	mov    %eax,%esi
    int pids[N];
  30:	8d 04 85 00 00 00 00 	lea    0x0(,%eax,4),%eax
  37:	89 e7                	mov    %esp,%edi
  39:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  3c:	83 c0 0f             	add    $0xf,%eax
  3f:	89 c1                	mov    %eax,%ecx
  41:	89 c2                	mov    %eax,%edx
  43:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
  49:	83 e2 f0             	and    $0xfffffff0,%edx
  4c:	29 cf                	sub    %ecx,%edi
  4e:	89 f9                	mov    %edi,%ecx
  50:	39 cc                	cmp    %ecx,%esp
  52:	74 23                	je     77 <main+0x77>
  54:	81 ec 00 10 00 00    	sub    $0x1000,%esp
  5a:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
  61:	00 
  62:	eb ec                	jmp    50 <main+0x50>
        printf(1, "test-case <number-of-children>\n");
  64:	50                   	push   %eax
  65:	50                   	push   %eax
  66:	68 50 0a 00 00       	push   $0xa50
  6b:	6a 01                	push   $0x1
  6d:	e8 0e 06 00 00       	call   680 <printf>
        exit();
  72:	e8 7c 04 00 00       	call   4f3 <exit>
    int pids[N];
  77:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  7d:	29 d4                	sub    %edx,%esp
  7f:	85 d2                	test   %edx,%edx
  81:	74 05                	je     88 <main+0x88>
  83:	83 4c 14 fc 00       	orl    $0x0,-0x4(%esp,%edx,1)
    int rets[N];
  88:	89 c2                	mov    %eax,%edx
  8a:	89 e1                	mov    %esp,%ecx
  8c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    int pids[N];
  91:	89 e7                	mov    %esp,%edi
    int rets[N];
  93:	29 c1                	sub    %eax,%ecx
  95:	83 e2 f0             	and    $0xfffffff0,%edx
  98:	89 c8                	mov    %ecx,%eax
  9a:	39 c4                	cmp    %eax,%esp
  9c:	74 10                	je     ae <main+0xae>
  9e:	81 ec 00 10 00 00    	sub    $0x1000,%esp
  a4:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
  ab:	00 
  ac:	eb ec                	jmp    9a <main+0x9a>
  ae:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  b4:	29 d4                	sub    %edx,%esp
  b6:	85 d2                	test   %edx,%edx
  b8:	0f 85 1b 01 00 00    	jne    1d9 <main+0x1d9>
  be:	89 65 e0             	mov    %esp,-0x20(%ebp)
    set_prio(1000);
  c1:	83 ec 0c             	sub    $0xc,%esp
  c4:	68 e8 03 00 00       	push   $0x3e8
  c9:	e8 ed 04 00 00       	call   5bb <set_prio>
    printf(1, "Priority of parent process = %d\n", get_prio());
  ce:	e8 f0 04 00 00       	call   5c3 <get_prio>
  d3:	83 c4 0c             	add    $0xc,%esp
  d6:	50                   	push   %eax
  d7:	68 70 0a 00 00       	push   $0xa70
  dc:	6a 01                	push   $0x1
  de:	e8 9d 05 00 00       	call   680 <printf>

    for (int i = 0; i < N; i++)
  e3:	83 c4 10             	add    $0x10,%esp
  e6:	85 f6                	test   %esi,%esi
  e8:	0f 8e f5 00 00 00    	jle    1e3 <main+0x1e3>
  ee:	31 db                	xor    %ebx,%ebx
  f0:	eb 14                	jmp    106 <main+0x106>
  f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        {
            set_prio(priority);
            delay(20);
            exit();
        }
        else if (ret > 0)
  f8:	7e 34                	jle    12e <main+0x12e>
        {
            pids[i] = ret;
  fa:	89 04 9f             	mov    %eax,(%edi,%ebx,4)
    for (int i = 0; i < N; i++)
  fd:	8d 43 01             	lea    0x1(%ebx),%eax
 100:	39 c6                	cmp    %eax,%esi
 102:	74 3d                	je     141 <main+0x141>
 104:	89 c3                	mov    %eax,%ebx
        int ret = fork();
 106:	e8 e0 03 00 00       	call   4eb <fork>
        if (ret == 0)
 10b:	85 c0                	test   %eax,%eax
 10d:	75 e9                	jne    f8 <main+0xf8>
      int priority = 10*(N - i);
 10f:	29 de                	sub    %ebx,%esi
            set_prio(priority);
 111:	83 ec 0c             	sub    $0xc,%esp
      int priority = 10*(N - i);
 114:	6b f6 0a             	imul   $0xa,%esi,%esi
            set_prio(priority);
 117:	56                   	push   %esi
 118:	e8 9e 04 00 00       	call   5bb <set_prio>
            delay(20);
 11d:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
 124:	e8 e7 00 00 00       	call   210 <delay>
            exit();
 129:	e8 c5 03 00 00       	call   4f3 <exit>
        }
        else
        {
            printf(1, "fork error \n");
 12e:	50                   	push   %eax
 12f:	50                   	push   %eax
 130:	68 05 0a 00 00       	push   $0xa05
 135:	6a 01                	push   $0x1
 137:	e8 44 05 00 00       	call   680 <printf>
            exit();
 13c:	e8 b2 03 00 00       	call   4f3 <exit>
 141:	8b 75 e0             	mov    -0x20(%ebp),%esi
 144:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 147:	01 f0                	add    %esi,%eax
    for (int i = 0; i < N; i++)
 149:	89 f2                	mov    %esi,%edx
 14b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 14e:	66 90                	xchg   %ax,%ax
 150:	89 55 e0             	mov    %edx,-0x20(%ebp)
        }
    }

    for (int i = 0; i < N; i++)
    {
        rets[i] = wait();
 153:	e8 a3 03 00 00       	call   4fb <wait>
 158:	8b 55 e0             	mov    -0x20(%ebp),%edx
 15b:	89 02                	mov    %eax,(%edx)
    for (int i = 0; i < N; i++)
 15d:	83 c2 04             	add    $0x4,%edx
 160:	3b 55 e4             	cmp    -0x1c(%ebp),%edx
 163:	75 eb                	jne    150 <main+0x150>
    }

    printf(1, "\nAll children completed\n");
 165:	50                   	push   %eax
 166:	50                   	push   %eax
 167:	68 35 0a 00 00       	push   $0xa35
 16c:	6a 01                	push   $0x1
 16e:	e8 0d 05 00 00       	call   680 <printf>
 173:	83 c4 10             	add    $0x10,%esp
 176:	31 c0                	xor    %eax,%eax
 178:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17f:	90                   	nop
    for (int i = 0; i < N; i++)
        printf(1, "Child %d.    pid %d\n", i, pids[i]);
 180:	ff 34 87             	pushl  (%edi,%eax,4)
 183:	50                   	push   %eax
 184:	68 12 0a 00 00       	push   $0xa12
 189:	6a 01                	push   $0x1
 18b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 18e:	e8 ed 04 00 00       	call   680 <printf>
    for (int i = 0; i < N; i++)
 193:	8b 45 e0             	mov    -0x20(%ebp),%eax
 196:	83 c4 10             	add    $0x10,%esp
 199:	89 c2                	mov    %eax,%edx
 19b:	83 c0 01             	add    $0x1,%eax
 19e:	39 da                	cmp    %ebx,%edx
 1a0:	75 de                	jne    180 <main+0x180>

    printf(1, "\nExit order \n");
 1a2:	50                   	push   %eax
 1a3:	50                   	push   %eax
 1a4:	68 27 0a 00 00       	push   $0xa27
 1a9:	6a 01                	push   $0x1
 1ab:	e8 d0 04 00 00       	call   680 <printf>
 1b0:	83 c4 10             	add    $0x10,%esp
 1b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1b7:	90                   	nop
    for (int i = 0; i < N; i++)
        printf(1, "pid %d\n", rets[i]);
 1b8:	83 ec 04             	sub    $0x4,%esp
 1bb:	ff 36                	pushl  (%esi)
 1bd:	83 c6 04             	add    $0x4,%esi
 1c0:	68 1f 0a 00 00       	push   $0xa1f
 1c5:	6a 01                	push   $0x1
 1c7:	e8 b4 04 00 00       	call   680 <printf>
    for (int i = 0; i < N; i++)
 1cc:	83 c4 10             	add    $0x10,%esp
 1cf:	3b 75 e4             	cmp    -0x1c(%ebp),%esi
 1d2:	75 e4                	jne    1b8 <main+0x1b8>

    exit();
 1d4:	e8 1a 03 00 00       	call   4f3 <exit>
    int rets[N];
 1d9:	83 4c 14 fc 00       	orl    $0x0,-0x4(%esp,%edx,1)
 1de:	e9 db fe ff ff       	jmp    be <main+0xbe>
    printf(1, "\nAll children completed\n");
 1e3:	50                   	push   %eax
 1e4:	50                   	push   %eax
 1e5:	68 35 0a 00 00       	push   $0xa35
 1ea:	6a 01                	push   $0x1
 1ec:	e8 8f 04 00 00       	call   680 <printf>
    printf(1, "\nExit order \n");
 1f1:	5a                   	pop    %edx
 1f2:	59                   	pop    %ecx
 1f3:	68 27 0a 00 00       	push   $0xa27
 1f8:	6a 01                	push   $0x1
 1fa:	e8 81 04 00 00       	call   680 <printf>
 1ff:	83 c4 10             	add    $0x10,%esp
 202:	eb d0                	jmp    1d4 <main+0x1d4>
 204:	66 90                	xchg   %ax,%ax
 206:	66 90                	xchg   %ax,%ax
 208:	66 90                	xchg   %ax,%ax
 20a:	66 90                	xchg   %ax,%ax
 20c:	66 90                	xchg   %ax,%ax
 20e:	66 90                	xchg   %ax,%ax

00000210 <delay>:
{
 210:	f3 0f 1e fb          	endbr32 
 214:	55                   	push   %ebp
 215:	89 e5                	mov    %esp,%ebp
 217:	57                   	push   %edi
 218:	56                   	push   %esi
 219:	53                   	push   %ebx
 21a:	83 ec 18             	sub    $0x18,%esp
 21d:	8b 7d 08             	mov    0x8(%ebp),%edi
    data = (int *)malloc(sizeof(int) * 1024 * 10);
 220:	68 00 a0 00 00       	push   $0xa000
 225:	e8 b6 06 00 00       	call   8e0 <malloc>
    if (data <= 0)
 22a:	83 c4 10             	add    $0x10,%esp
    data = (int *)malloc(sizeof(int) * 1024 * 10);
 22d:	89 c3                	mov    %eax,%ebx
    if (data <= 0)
 22f:	85 c0                	test   %eax,%eax
 231:	74 3b                	je     26e <delay+0x5e>
    for (i = 0; i < count; i++)
 233:	31 f6                	xor    %esi,%esi
 235:	8d 93 00 a0 00 00    	lea    0xa000(%ebx),%edx
 23b:	85 ff                	test   %edi,%edi
 23d:	7e 27                	jle    266 <delay+0x56>
{
 23f:	b9 44 16 00 00       	mov    $0x1644,%ecx
            for (j = 0; j < 1024 * 10; j++)
 244:	89 d8                	mov    %ebx,%eax
 246:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24d:	8d 76 00             	lea    0x0(%esi),%esi
                data[j]++;
 250:	83 00 01             	addl   $0x1,(%eax)
            for (j = 0; j < 1024 * 10; j++)
 253:	83 c0 04             	add    $0x4,%eax
 256:	39 d0                	cmp    %edx,%eax
 258:	75 f6                	jne    250 <delay+0x40>
        for (k = 0; k < 5700; k++)
 25a:	83 e9 01             	sub    $0x1,%ecx
 25d:	75 e5                	jne    244 <delay+0x34>
    for (i = 0; i < count; i++)
 25f:	83 c6 01             	add    $0x1,%esi
 262:	39 f7                	cmp    %esi,%edi
 264:	75 d9                	jne    23f <delay+0x2f>
}
 266:	8d 65 f4             	lea    -0xc(%ebp),%esp
 269:	5b                   	pop    %ebx
 26a:	5e                   	pop    %esi
 26b:	5f                   	pop    %edi
 26c:	5d                   	pop    %ebp
 26d:	c3                   	ret    
        printf(1, "Error on memory allocation \n");
 26e:	83 ec 08             	sub    $0x8,%esp
 271:	68 e8 09 00 00       	push   $0x9e8
 276:	6a 01                	push   $0x1
 278:	e8 03 04 00 00       	call   680 <printf>
 27d:	83 c4 10             	add    $0x10,%esp
 280:	eb b1                	jmp    233 <delay+0x23>
 282:	66 90                	xchg   %ax,%ax
 284:	66 90                	xchg   %ax,%ax
 286:	66 90                	xchg   %ax,%ax
 288:	66 90                	xchg   %ax,%ax
 28a:	66 90                	xchg   %ax,%ax
 28c:	66 90                	xchg   %ax,%ax
 28e:	66 90                	xchg   %ax,%ax

00000290 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 290:	f3 0f 1e fb          	endbr32 
 294:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 295:	31 c0                	xor    %eax,%eax
{
 297:	89 e5                	mov    %esp,%ebp
 299:	53                   	push   %ebx
 29a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 29d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
 2a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2a7:	83 c0 01             	add    $0x1,%eax
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strcpy+0x10>
    ;
  return os;
}
 2ae:	89 c8                	mov    %ecx,%eax
 2b0:	5b                   	pop    %ebx
 2b1:	5d                   	pop    %ebp
 2b2:	c3                   	ret    
 2b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000002c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2c0:	f3 0f 1e fb          	endbr32 
 2c4:	55                   	push   %ebp
 2c5:	89 e5                	mov    %esp,%ebp
 2c7:	53                   	push   %ebx
 2c8:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2cb:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
 2ce:	0f b6 01             	movzbl (%ecx),%eax
 2d1:	0f b6 1a             	movzbl (%edx),%ebx
 2d4:	84 c0                	test   %al,%al
 2d6:	75 19                	jne    2f1 <strcmp+0x31>
 2d8:	eb 26                	jmp    300 <strcmp+0x40>
 2da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2e0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
 2e4:	83 c1 01             	add    $0x1,%ecx
 2e7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 2ea:	0f b6 1a             	movzbl (%edx),%ebx
 2ed:	84 c0                	test   %al,%al
 2ef:	74 0f                	je     300 <strcmp+0x40>
 2f1:	38 d8                	cmp    %bl,%al
 2f3:	74 eb                	je     2e0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 2f5:	29 d8                	sub    %ebx,%eax
}
 2f7:	5b                   	pop    %ebx
 2f8:	5d                   	pop    %ebp
 2f9:	c3                   	ret    
 2fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 300:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 302:	29 d8                	sub    %ebx,%eax
}
 304:	5b                   	pop    %ebx
 305:	5d                   	pop    %ebp
 306:	c3                   	ret    
 307:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30e:	66 90                	xchg   %ax,%ax

00000310 <strlen>:

uint
strlen(const char *s)
{
 310:	f3 0f 1e fb          	endbr32 
 314:	55                   	push   %ebp
 315:	89 e5                	mov    %esp,%ebp
 317:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 31a:	80 3a 00             	cmpb   $0x0,(%edx)
 31d:	74 21                	je     340 <strlen+0x30>
 31f:	31 c0                	xor    %eax,%eax
 321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 328:	83 c0 01             	add    $0x1,%eax
 32b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 32f:	89 c1                	mov    %eax,%ecx
 331:	75 f5                	jne    328 <strlen+0x18>
    ;
  return n;
}
 333:	89 c8                	mov    %ecx,%eax
 335:	5d                   	pop    %ebp
 336:	c3                   	ret    
 337:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 33e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
 340:	31 c9                	xor    %ecx,%ecx
}
 342:	5d                   	pop    %ebp
 343:	89 c8                	mov    %ecx,%eax
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi

00000350 <memset>:

void*
memset(void *dst, int c, uint n)
{
 350:	f3 0f 1e fb          	endbr32 
 354:	55                   	push   %ebp
 355:	89 e5                	mov    %esp,%ebp
 357:	57                   	push   %edi
 358:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 35b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 35e:	8b 45 0c             	mov    0xc(%ebp),%eax
 361:	89 d7                	mov    %edx,%edi
 363:	fc                   	cld    
 364:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 366:	89 d0                	mov    %edx,%eax
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <strchr>:

char*
strchr(const char *s, char c)
{
 370:	f3 0f 1e fb          	endbr32 
 374:	55                   	push   %ebp
 375:	89 e5                	mov    %esp,%ebp
 377:	8b 45 08             	mov    0x8(%ebp),%eax
 37a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 37e:	0f b6 10             	movzbl (%eax),%edx
 381:	84 d2                	test   %dl,%dl
 383:	75 16                	jne    39b <strchr+0x2b>
 385:	eb 21                	jmp    3a8 <strchr+0x38>
 387:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38e:	66 90                	xchg   %ax,%ax
 390:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 394:	83 c0 01             	add    $0x1,%eax
 397:	84 d2                	test   %dl,%dl
 399:	74 0d                	je     3a8 <strchr+0x38>
    if(*s == c)
 39b:	38 d1                	cmp    %dl,%cl
 39d:	75 f1                	jne    390 <strchr+0x20>
      return (char*)s;
  return 0;
}
 39f:	5d                   	pop    %ebp
 3a0:	c3                   	ret    
 3a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3a8:	31 c0                	xor    %eax,%eax
}
 3aa:	5d                   	pop    %ebp
 3ab:	c3                   	ret    
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003b0 <gets>:

char*
gets(char *buf, int max)
{
 3b0:	f3 0f 1e fb          	endbr32 
 3b4:	55                   	push   %ebp
 3b5:	89 e5                	mov    %esp,%ebp
 3b7:	57                   	push   %edi
 3b8:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3b9:	31 f6                	xor    %esi,%esi
{
 3bb:	53                   	push   %ebx
 3bc:	89 f3                	mov    %esi,%ebx
 3be:	83 ec 1c             	sub    $0x1c,%esp
 3c1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 3c4:	eb 33                	jmp    3f9 <gets+0x49>
 3c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 3d0:	83 ec 04             	sub    $0x4,%esp
 3d3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3d6:	6a 01                	push   $0x1
 3d8:	50                   	push   %eax
 3d9:	6a 00                	push   $0x0
 3db:	e8 2b 01 00 00       	call   50b <read>
    if(cc < 1)
 3e0:	83 c4 10             	add    $0x10,%esp
 3e3:	85 c0                	test   %eax,%eax
 3e5:	7e 1c                	jle    403 <gets+0x53>
      break;
    buf[i++] = c;
 3e7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3eb:	83 c7 01             	add    $0x1,%edi
 3ee:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 3f1:	3c 0a                	cmp    $0xa,%al
 3f3:	74 23                	je     418 <gets+0x68>
 3f5:	3c 0d                	cmp    $0xd,%al
 3f7:	74 1f                	je     418 <gets+0x68>
  for(i=0; i+1 < max; ){
 3f9:	83 c3 01             	add    $0x1,%ebx
 3fc:	89 fe                	mov    %edi,%esi
 3fe:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 401:	7c cd                	jl     3d0 <gets+0x20>
 403:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 405:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 408:	c6 03 00             	movb   $0x0,(%ebx)
}
 40b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40e:	5b                   	pop    %ebx
 40f:	5e                   	pop    %esi
 410:	5f                   	pop    %edi
 411:	5d                   	pop    %ebp
 412:	c3                   	ret    
 413:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 417:	90                   	nop
 418:	8b 75 08             	mov    0x8(%ebp),%esi
 41b:	8b 45 08             	mov    0x8(%ebp),%eax
 41e:	01 de                	add    %ebx,%esi
 420:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 422:	c6 03 00             	movb   $0x0,(%ebx)
}
 425:	8d 65 f4             	lea    -0xc(%ebp),%esp
 428:	5b                   	pop    %ebx
 429:	5e                   	pop    %esi
 42a:	5f                   	pop    %edi
 42b:	5d                   	pop    %ebp
 42c:	c3                   	ret    
 42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <stat>:

int
stat(const char *n, struct stat *st)
{
 430:	f3 0f 1e fb          	endbr32 
 434:	55                   	push   %ebp
 435:	89 e5                	mov    %esp,%ebp
 437:	56                   	push   %esi
 438:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 439:	83 ec 08             	sub    $0x8,%esp
 43c:	6a 00                	push   $0x0
 43e:	ff 75 08             	pushl  0x8(%ebp)
 441:	e8 ed 00 00 00       	call   533 <open>
  if(fd < 0)
 446:	83 c4 10             	add    $0x10,%esp
 449:	85 c0                	test   %eax,%eax
 44b:	78 2b                	js     478 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 44d:	83 ec 08             	sub    $0x8,%esp
 450:	ff 75 0c             	pushl  0xc(%ebp)
 453:	89 c3                	mov    %eax,%ebx
 455:	50                   	push   %eax
 456:	e8 f0 00 00 00       	call   54b <fstat>
  close(fd);
 45b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 45e:	89 c6                	mov    %eax,%esi
  close(fd);
 460:	e8 b6 00 00 00       	call   51b <close>
  return r;
 465:	83 c4 10             	add    $0x10,%esp
}
 468:	8d 65 f8             	lea    -0x8(%ebp),%esp
 46b:	89 f0                	mov    %esi,%eax
 46d:	5b                   	pop    %ebx
 46e:	5e                   	pop    %esi
 46f:	5d                   	pop    %ebp
 470:	c3                   	ret    
 471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 478:	be ff ff ff ff       	mov    $0xffffffff,%esi
 47d:	eb e9                	jmp    468 <stat+0x38>
 47f:	90                   	nop

00000480 <atoi>:

int
atoi(const char *s)
{
 480:	f3 0f 1e fb          	endbr32 
 484:	55                   	push   %ebp
 485:	89 e5                	mov    %esp,%ebp
 487:	53                   	push   %ebx
 488:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 48b:	0f be 02             	movsbl (%edx),%eax
 48e:	8d 48 d0             	lea    -0x30(%eax),%ecx
 491:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 494:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 499:	77 1a                	ja     4b5 <atoi+0x35>
 49b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop
    n = n*10 + *s++ - '0';
 4a0:	83 c2 01             	add    $0x1,%edx
 4a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4aa:	0f be 02             	movsbl (%edx),%eax
 4ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4b0:	80 fb 09             	cmp    $0x9,%bl
 4b3:	76 eb                	jbe    4a0 <atoi+0x20>
  return n;
}
 4b5:	89 c8                	mov    %ecx,%eax
 4b7:	5b                   	pop    %ebx
 4b8:	5d                   	pop    %ebp
 4b9:	c3                   	ret    
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4c0:	f3 0f 1e fb          	endbr32 
 4c4:	55                   	push   %ebp
 4c5:	89 e5                	mov    %esp,%ebp
 4c7:	57                   	push   %edi
 4c8:	8b 45 10             	mov    0x10(%ebp),%eax
 4cb:	8b 55 08             	mov    0x8(%ebp),%edx
 4ce:	56                   	push   %esi
 4cf:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4d2:	85 c0                	test   %eax,%eax
 4d4:	7e 0f                	jle    4e5 <memmove+0x25>
 4d6:	01 d0                	add    %edx,%eax
  dst = vdst;
 4d8:	89 d7                	mov    %edx,%edi
 4da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4e1:	39 f8                	cmp    %edi,%eax
 4e3:	75 fb                	jne    4e0 <memmove+0x20>
  return vdst;
}
 4e5:	5e                   	pop    %esi
 4e6:	89 d0                	mov    %edx,%eax
 4e8:	5f                   	pop    %edi
 4e9:	5d                   	pop    %ebp
 4ea:	c3                   	ret    

000004eb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4eb:	b8 01 00 00 00       	mov    $0x1,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    

000004f3 <exit>:
SYSCALL(exit)
 4f3:	b8 02 00 00 00       	mov    $0x2,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret    

000004fb <wait>:
SYSCALL(wait)
 4fb:	b8 03 00 00 00       	mov    $0x3,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret    

00000503 <pipe>:
SYSCALL(pipe)
 503:	b8 04 00 00 00       	mov    $0x4,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret    

0000050b <read>:
SYSCALL(read)
 50b:	b8 05 00 00 00       	mov    $0x5,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret    

00000513 <write>:
SYSCALL(write)
 513:	b8 10 00 00 00       	mov    $0x10,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret    

0000051b <close>:
SYSCALL(close)
 51b:	b8 15 00 00 00       	mov    $0x15,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret    

00000523 <kill>:
SYSCALL(kill)
 523:	b8 06 00 00 00       	mov    $0x6,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret    

0000052b <exec>:
SYSCALL(exec)
 52b:	b8 07 00 00 00       	mov    $0x7,%eax
 530:	cd 40                	int    $0x40
 532:	c3                   	ret    

00000533 <open>:
SYSCALL(open)
 533:	b8 0f 00 00 00       	mov    $0xf,%eax
 538:	cd 40                	int    $0x40
 53a:	c3                   	ret    

0000053b <mknod>:
SYSCALL(mknod)
 53b:	b8 11 00 00 00       	mov    $0x11,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret    

00000543 <unlink>:
SYSCALL(unlink)
 543:	b8 12 00 00 00       	mov    $0x12,%eax
 548:	cd 40                	int    $0x40
 54a:	c3                   	ret    

0000054b <fstat>:
SYSCALL(fstat)
 54b:	b8 08 00 00 00       	mov    $0x8,%eax
 550:	cd 40                	int    $0x40
 552:	c3                   	ret    

00000553 <link>:
SYSCALL(link)
 553:	b8 13 00 00 00       	mov    $0x13,%eax
 558:	cd 40                	int    $0x40
 55a:	c3                   	ret    

0000055b <mkdir>:
SYSCALL(mkdir)
 55b:	b8 14 00 00 00       	mov    $0x14,%eax
 560:	cd 40                	int    $0x40
 562:	c3                   	ret    

00000563 <chdir>:
SYSCALL(chdir)
 563:	b8 09 00 00 00       	mov    $0x9,%eax
 568:	cd 40                	int    $0x40
 56a:	c3                   	ret    

0000056b <dup>:
SYSCALL(dup)
 56b:	b8 0a 00 00 00       	mov    $0xa,%eax
 570:	cd 40                	int    $0x40
 572:	c3                   	ret    

00000573 <getpid>:
SYSCALL(getpid)
 573:	b8 0b 00 00 00       	mov    $0xb,%eax
 578:	cd 40                	int    $0x40
 57a:	c3                   	ret    

0000057b <sbrk>:
SYSCALL(sbrk)
 57b:	b8 0c 00 00 00       	mov    $0xc,%eax
 580:	cd 40                	int    $0x40
 582:	c3                   	ret    

00000583 <sleep>:
SYSCALL(sleep)
 583:	b8 0d 00 00 00       	mov    $0xd,%eax
 588:	cd 40                	int    $0x40
 58a:	c3                   	ret    

0000058b <uptime>:
SYSCALL(uptime)
 58b:	b8 0e 00 00 00       	mov    $0xe,%eax
 590:	cd 40                	int    $0x40
 592:	c3                   	ret    

00000593 <hello>:
SYSCALL(hello)
 593:	b8 16 00 00 00       	mov    $0x16,%eax
 598:	cd 40                	int    $0x40
 59a:	c3                   	ret    

0000059b <hello_name>:
SYSCALL(hello_name)
 59b:	b8 17 00 00 00       	mov    $0x17,%eax
 5a0:	cd 40                	int    $0x40
 5a2:	c3                   	ret    

000005a3 <get_num_proc>:
SYSCALL(get_num_proc)
 5a3:	b8 18 00 00 00       	mov    $0x18,%eax
 5a8:	cd 40                	int    $0x40
 5aa:	c3                   	ret    

000005ab <get_max_pid>:
SYSCALL(get_max_pid)
 5ab:	b8 19 00 00 00       	mov    $0x19,%eax
 5b0:	cd 40                	int    $0x40
 5b2:	c3                   	ret    

000005b3 <get_proc_info>:
SYSCALL(get_proc_info)
 5b3:	b8 1a 00 00 00       	mov    $0x1a,%eax
 5b8:	cd 40                	int    $0x40
 5ba:	c3                   	ret    

000005bb <set_prio>:
SYSCALL(set_prio)
 5bb:	b8 1b 00 00 00       	mov    $0x1b,%eax
 5c0:	cd 40                	int    $0x40
 5c2:	c3                   	ret    

000005c3 <get_prio>:
SYSCALL(get_prio)
 5c3:	b8 1c 00 00 00       	mov    $0x1c,%eax
 5c8:	cd 40                	int    $0x40
 5ca:	c3                   	ret    
 5cb:	66 90                	xchg   %ax,%ax
 5cd:	66 90                	xchg   %ax,%ax
 5cf:	90                   	nop

000005d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 3c             	sub    $0x3c,%esp
 5d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5dc:	89 d1                	mov    %edx,%ecx
{
 5de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5e1:	85 d2                	test   %edx,%edx
 5e3:	0f 89 7f 00 00 00    	jns    668 <printint+0x98>
 5e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5ed:	74 79                	je     668 <printint+0x98>
    neg = 1;
 5ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5f8:	31 db                	xor    %ebx,%ebx
 5fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 600:	89 c8                	mov    %ecx,%eax
 602:	31 d2                	xor    %edx,%edx
 604:	89 cf                	mov    %ecx,%edi
 606:	f7 75 c4             	divl   -0x3c(%ebp)
 609:	0f b6 92 98 0a 00 00 	movzbl 0xa98(%edx),%edx
 610:	89 45 c0             	mov    %eax,-0x40(%ebp)
 613:	89 d8                	mov    %ebx,%eax
 615:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 618:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 61b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 61e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 621:	76 dd                	jbe    600 <printint+0x30>
  if(neg)
 623:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 626:	85 c9                	test   %ecx,%ecx
 628:	74 0c                	je     636 <printint+0x66>
    buf[i++] = '-';
 62a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 62f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 631:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 636:	8b 7d b8             	mov    -0x48(%ebp),%edi
 639:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 63d:	eb 07                	jmp    646 <printint+0x76>
 63f:	90                   	nop
 640:	0f b6 13             	movzbl (%ebx),%edx
 643:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 646:	83 ec 04             	sub    $0x4,%esp
 649:	88 55 d7             	mov    %dl,-0x29(%ebp)
 64c:	6a 01                	push   $0x1
 64e:	56                   	push   %esi
 64f:	57                   	push   %edi
 650:	e8 be fe ff ff       	call   513 <write>
  while(--i >= 0)
 655:	83 c4 10             	add    $0x10,%esp
 658:	39 de                	cmp    %ebx,%esi
 65a:	75 e4                	jne    640 <printint+0x70>
    putc(fd, buf[i]);
}
 65c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 65f:	5b                   	pop    %ebx
 660:	5e                   	pop    %esi
 661:	5f                   	pop    %edi
 662:	5d                   	pop    %ebp
 663:	c3                   	ret    
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 668:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 66f:	eb 87                	jmp    5f8 <printint+0x28>
 671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 678:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop

00000680 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 680:	f3 0f 1e fb          	endbr32 
 684:	55                   	push   %ebp
 685:	89 e5                	mov    %esp,%ebp
 687:	57                   	push   %edi
 688:	56                   	push   %esi
 689:	53                   	push   %ebx
 68a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 68d:	8b 75 0c             	mov    0xc(%ebp),%esi
 690:	0f b6 1e             	movzbl (%esi),%ebx
 693:	84 db                	test   %bl,%bl
 695:	0f 84 b4 00 00 00    	je     74f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
 69b:	8d 45 10             	lea    0x10(%ebp),%eax
 69e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 6a1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6a4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
 6a6:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6a9:	eb 33                	jmp    6de <printf+0x5e>
 6ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop
 6b0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6b3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	74 17                	je     6d4 <printf+0x54>
  write(fd, &c, 1);
 6bd:	83 ec 04             	sub    $0x4,%esp
 6c0:	88 5d e7             	mov    %bl,-0x19(%ebp)
 6c3:	6a 01                	push   $0x1
 6c5:	57                   	push   %edi
 6c6:	ff 75 08             	pushl  0x8(%ebp)
 6c9:	e8 45 fe ff ff       	call   513 <write>
 6ce:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 6d1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6d4:	0f b6 1e             	movzbl (%esi),%ebx
 6d7:	83 c6 01             	add    $0x1,%esi
 6da:	84 db                	test   %bl,%bl
 6dc:	74 71                	je     74f <printf+0xcf>
    c = fmt[i] & 0xff;
 6de:	0f be cb             	movsbl %bl,%ecx
 6e1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6e4:	85 d2                	test   %edx,%edx
 6e6:	74 c8                	je     6b0 <printf+0x30>
      }
    } else if(state == '%'){
 6e8:	83 fa 25             	cmp    $0x25,%edx
 6eb:	75 e7                	jne    6d4 <printf+0x54>
      if(c == 'd'){
 6ed:	83 f8 64             	cmp    $0x64,%eax
 6f0:	0f 84 9a 00 00 00    	je     790 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6f6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 6fc:	83 f9 70             	cmp    $0x70,%ecx
 6ff:	74 5f                	je     760 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 701:	83 f8 73             	cmp    $0x73,%eax
 704:	0f 84 d6 00 00 00    	je     7e0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 70a:	83 f8 63             	cmp    $0x63,%eax
 70d:	0f 84 8d 00 00 00    	je     7a0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 713:	83 f8 25             	cmp    $0x25,%eax
 716:	0f 84 b4 00 00 00    	je     7d0 <printf+0x150>
  write(fd, &c, 1);
 71c:	83 ec 04             	sub    $0x4,%esp
 71f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 723:	6a 01                	push   $0x1
 725:	57                   	push   %edi
 726:	ff 75 08             	pushl  0x8(%ebp)
 729:	e8 e5 fd ff ff       	call   513 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 72e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 731:	83 c4 0c             	add    $0xc,%esp
 734:	6a 01                	push   $0x1
 736:	83 c6 01             	add    $0x1,%esi
 739:	57                   	push   %edi
 73a:	ff 75 08             	pushl  0x8(%ebp)
 73d:	e8 d1 fd ff ff       	call   513 <write>
  for(i = 0; fmt[i]; i++){
 742:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
 746:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
 749:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 74b:	84 db                	test   %bl,%bl
 74d:	75 8f                	jne    6de <printf+0x5e>
    }
  }
}
 74f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 752:	5b                   	pop    %ebx
 753:	5e                   	pop    %esi
 754:	5f                   	pop    %edi
 755:	5d                   	pop    %ebp
 756:	c3                   	ret    
 757:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 760:	83 ec 0c             	sub    $0xc,%esp
 763:	b9 10 00 00 00       	mov    $0x10,%ecx
 768:	6a 00                	push   $0x0
 76a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 76d:	8b 45 08             	mov    0x8(%ebp),%eax
 770:	8b 13                	mov    (%ebx),%edx
 772:	e8 59 fe ff ff       	call   5d0 <printint>
        ap++;
 777:	89 d8                	mov    %ebx,%eax
 779:	83 c4 10             	add    $0x10,%esp
      state = 0;
 77c:	31 d2                	xor    %edx,%edx
        ap++;
 77e:	83 c0 04             	add    $0x4,%eax
 781:	89 45 d0             	mov    %eax,-0x30(%ebp)
 784:	e9 4b ff ff ff       	jmp    6d4 <printf+0x54>
 789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 790:	83 ec 0c             	sub    $0xc,%esp
 793:	b9 0a 00 00 00       	mov    $0xa,%ecx
 798:	6a 01                	push   $0x1
 79a:	eb ce                	jmp    76a <printf+0xea>
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 7a0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 7a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7a6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
 7a8:	6a 01                	push   $0x1
        ap++;
 7aa:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
 7ad:	57                   	push   %edi
 7ae:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
 7b1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7b4:	e8 5a fd ff ff       	call   513 <write>
        ap++;
 7b9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 7bc:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7bf:	31 d2                	xor    %edx,%edx
 7c1:	e9 0e ff ff ff       	jmp    6d4 <printf+0x54>
 7c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
 7d0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 7d3:	83 ec 04             	sub    $0x4,%esp
 7d6:	e9 59 ff ff ff       	jmp    734 <printf+0xb4>
 7db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7df:	90                   	nop
        s = (char*)*ap;
 7e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7e3:	8b 18                	mov    (%eax),%ebx
        ap++;
 7e5:	83 c0 04             	add    $0x4,%eax
 7e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7eb:	85 db                	test   %ebx,%ebx
 7ed:	74 17                	je     806 <printf+0x186>
        while(*s != 0){
 7ef:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 7f2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 7f4:	84 c0                	test   %al,%al
 7f6:	0f 84 d8 fe ff ff    	je     6d4 <printf+0x54>
 7fc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 7ff:	89 de                	mov    %ebx,%esi
 801:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804:	eb 1a                	jmp    820 <printf+0x1a0>
          s = "(null)";
 806:	bb 91 0a 00 00       	mov    $0xa91,%ebx
        while(*s != 0){
 80b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 80e:	b8 28 00 00 00       	mov    $0x28,%eax
 813:	89 de                	mov    %ebx,%esi
 815:	8b 5d 08             	mov    0x8(%ebp),%ebx
 818:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81f:	90                   	nop
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
          s++;
 823:	83 c6 01             	add    $0x1,%esi
 826:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 829:	6a 01                	push   $0x1
 82b:	57                   	push   %edi
 82c:	53                   	push   %ebx
 82d:	e8 e1 fc ff ff       	call   513 <write>
        while(*s != 0){
 832:	0f b6 06             	movzbl (%esi),%eax
 835:	83 c4 10             	add    $0x10,%esp
 838:	84 c0                	test   %al,%al
 83a:	75 e4                	jne    820 <printf+0x1a0>
 83c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
 83f:	31 d2                	xor    %edx,%edx
 841:	e9 8e fe ff ff       	jmp    6d4 <printf+0x54>
 846:	66 90                	xchg   %ax,%ax
 848:	66 90                	xchg   %ax,%ax
 84a:	66 90                	xchg   %ax,%ax
 84c:	66 90                	xchg   %ax,%ax
 84e:	66 90                	xchg   %ax,%ax

00000850 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 850:	f3 0f 1e fb          	endbr32 
 854:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 855:	a1 7c 0d 00 00       	mov    0xd7c,%eax
{
 85a:	89 e5                	mov    %esp,%ebp
 85c:	57                   	push   %edi
 85d:	56                   	push   %esi
 85e:	53                   	push   %ebx
 85f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 862:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 864:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 867:	39 c8                	cmp    %ecx,%eax
 869:	73 15                	jae    880 <free+0x30>
 86b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 86f:	90                   	nop
 870:	39 d1                	cmp    %edx,%ecx
 872:	72 14                	jb     888 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 874:	39 d0                	cmp    %edx,%eax
 876:	73 10                	jae    888 <free+0x38>
{
 878:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 87a:	8b 10                	mov    (%eax),%edx
 87c:	39 c8                	cmp    %ecx,%eax
 87e:	72 f0                	jb     870 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 880:	39 d0                	cmp    %edx,%eax
 882:	72 f4                	jb     878 <free+0x28>
 884:	39 d1                	cmp    %edx,%ecx
 886:	73 f0                	jae    878 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
 888:	8b 73 fc             	mov    -0x4(%ebx),%esi
 88b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88e:	39 fa                	cmp    %edi,%edx
 890:	74 1e                	je     8b0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 892:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 895:	8b 50 04             	mov    0x4(%eax),%edx
 898:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 89b:	39 f1                	cmp    %esi,%ecx
 89d:	74 28                	je     8c7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 89f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 8a1:	5b                   	pop    %ebx
  freep = p;
 8a2:	a3 7c 0d 00 00       	mov    %eax,0xd7c
}
 8a7:	5e                   	pop    %esi
 8a8:	5f                   	pop    %edi
 8a9:	5d                   	pop    %ebp
 8aa:	c3                   	ret    
 8ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8af:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
 8b0:	03 72 04             	add    0x4(%edx),%esi
 8b3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8b6:	8b 10                	mov    (%eax),%edx
 8b8:	8b 12                	mov    (%edx),%edx
 8ba:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8bd:	8b 50 04             	mov    0x4(%eax),%edx
 8c0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8c3:	39 f1                	cmp    %esi,%ecx
 8c5:	75 d8                	jne    89f <free+0x4f>
    p->s.size += bp->s.size;
 8c7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8ca:	a3 7c 0d 00 00       	mov    %eax,0xd7c
    p->s.size += bp->s.size;
 8cf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8d2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8d5:	89 10                	mov    %edx,(%eax)
}
 8d7:	5b                   	pop    %ebx
 8d8:	5e                   	pop    %esi
 8d9:	5f                   	pop    %edi
 8da:	5d                   	pop    %ebp
 8db:	c3                   	ret    
 8dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8e0:	f3 0f 1e fb          	endbr32 
 8e4:	55                   	push   %ebp
 8e5:	89 e5                	mov    %esp,%ebp
 8e7:	57                   	push   %edi
 8e8:	56                   	push   %esi
 8e9:	53                   	push   %ebx
 8ea:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8ed:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8f0:	8b 3d 7c 0d 00 00    	mov    0xd7c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f6:	8d 70 07             	lea    0x7(%eax),%esi
 8f9:	c1 ee 03             	shr    $0x3,%esi
 8fc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8ff:	85 ff                	test   %edi,%edi
 901:	0f 84 a9 00 00 00    	je     9b0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 907:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
 909:	8b 48 04             	mov    0x4(%eax),%ecx
 90c:	39 f1                	cmp    %esi,%ecx
 90e:	73 6d                	jae    97d <malloc+0x9d>
 910:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 916:	bb 00 10 00 00       	mov    $0x1000,%ebx
 91b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 91e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
 925:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 928:	eb 17                	jmp    941 <malloc+0x61>
 92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 930:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
 932:	8b 4a 04             	mov    0x4(%edx),%ecx
 935:	39 f1                	cmp    %esi,%ecx
 937:	73 4f                	jae    988 <malloc+0xa8>
 939:	8b 3d 7c 0d 00 00    	mov    0xd7c,%edi
 93f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 941:	39 c7                	cmp    %eax,%edi
 943:	75 eb                	jne    930 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
 945:	83 ec 0c             	sub    $0xc,%esp
 948:	ff 75 e4             	pushl  -0x1c(%ebp)
 94b:	e8 2b fc ff ff       	call   57b <sbrk>
  if(p == (char*)-1)
 950:	83 c4 10             	add    $0x10,%esp
 953:	83 f8 ff             	cmp    $0xffffffff,%eax
 956:	74 1b                	je     973 <malloc+0x93>
  hp->s.size = nu;
 958:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 95b:	83 ec 0c             	sub    $0xc,%esp
 95e:	83 c0 08             	add    $0x8,%eax
 961:	50                   	push   %eax
 962:	e8 e9 fe ff ff       	call   850 <free>
  return freep;
 967:	a1 7c 0d 00 00       	mov    0xd7c,%eax
      if((p = morecore(nunits)) == 0)
 96c:	83 c4 10             	add    $0x10,%esp
 96f:	85 c0                	test   %eax,%eax
 971:	75 bd                	jne    930 <malloc+0x50>
        return 0;
  }
}
 973:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 976:	31 c0                	xor    %eax,%eax
}
 978:	5b                   	pop    %ebx
 979:	5e                   	pop    %esi
 97a:	5f                   	pop    %edi
 97b:	5d                   	pop    %ebp
 97c:	c3                   	ret    
    if(p->s.size >= nunits){
 97d:	89 c2                	mov    %eax,%edx
 97f:	89 f8                	mov    %edi,%eax
 981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 988:	39 ce                	cmp    %ecx,%esi
 98a:	74 54                	je     9e0 <malloc+0x100>
        p->s.size -= nunits;
 98c:	29 f1                	sub    %esi,%ecx
 98e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
 991:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
 994:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
 997:	a3 7c 0d 00 00       	mov    %eax,0xd7c
}
 99c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 99f:	8d 42 08             	lea    0x8(%edx),%eax
}
 9a2:	5b                   	pop    %ebx
 9a3:	5e                   	pop    %esi
 9a4:	5f                   	pop    %edi
 9a5:	5d                   	pop    %ebp
 9a6:	c3                   	ret    
 9a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9ae:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
 9b0:	c7 05 7c 0d 00 00 80 	movl   $0xd80,0xd7c
 9b7:	0d 00 00 
    base.s.size = 0;
 9ba:	bf 80 0d 00 00       	mov    $0xd80,%edi
    base.s.ptr = freep = prevp = &base;
 9bf:	c7 05 80 0d 00 00 80 	movl   $0xd80,0xd80
 9c6:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
 9cb:	c7 05 84 0d 00 00 00 	movl   $0x0,0xd84
 9d2:	00 00 00 
    if(p->s.size >= nunits){
 9d5:	e9 36 ff ff ff       	jmp    910 <malloc+0x30>
 9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9e0:	8b 0a                	mov    (%edx),%ecx
 9e2:	89 08                	mov    %ecx,(%eax)
 9e4:	eb b1                	jmp    997 <malloc+0xb7>
