.intel_syntax noprefix

# Standalone Linux x86-64 version of the claim game.
# Build example:
#   gcc -nostdlib -no-pie -o a.out claim_game_standalone.asm
# Run:
#   ./a.out

.section .data
Game:
    .ascii "Rules:\n"
    .ascii "* 32 weeks\n"
    .ascii "* Your health will drop each week and if it reaches 0% then game over :(\n"
    .ascii "* Go to camp to increase your health\n"
    .ascii "* Staking a new claim leaves all gold in the current claim behind, so make your decision carefully\n"
    .ascii "* One claim will be a bonanza and contain a lot of gold :)\n\n\0"
WhichClaim:
    .ascii "Which claim do you want to stake first (0-9)? \0"
WeekWords:
    .ascii "Week \0"
MoneyWords:
    .ascii "You have $ \0"
BankWords:
    .ascii "Bank balance: $ \0"
HealthWords:
    .ascii "Your health is at \0"
MoraleWords:
    .ascii "Your morale is \0"
Percent:
    .ascii "%\n\0"
ClaimWords:
    .ascii "You are at claim # \0"

Sunday:
    .ascii "It's Sunday! Do you...\n"
    .ascii "1. Do nothing, 2. Go to camp, 3. Stake a new claim.\n"
    .ascii "4. Go to town, 5. Work 2x harder (lose some health in the process).\n\0"
WorkingWords:
    .ascii "You are working claim # \0"
MinedWords:
    .ascii "You mined $ \0"
MinedWords2:
    .ascii " in gold.\n\0"
LostWords:
    .ascii "You lost \0"
LostWords2:
    .ascii "% health.\n\0"
RegainWords:
    .ascii "You regained \0"
RegainWords2:
    .ascii "% health.\n\0"
LeaveWords:
    .ascii "You head off to stake a new claim. You left $ \0"
LeaveWords2:
    .ascii " behind.\n\0"
NewClaimWords:
    .ascii "Which claim do you want to stake (0-9)? \0"
GameOverWords:
    .ascii "===============GAME OVER===============\n\0"
FinalMoney:
    .ascii "You ended the game with $ \0"
FinalHealthLabel:
    .ascii "Your health was \0"

TownMenu:
    .ascii "You arrive in town. What do you want to do?\n"
    .ascii "1. Go to the bank\n"
    .ascii "2. Go to the casino (costs 100 gold)\n"
    .ascii "3. Go to the bar (boost morale)\n\0"

BankDepositWords:
    .ascii "You deposited all of your money into the bank.\n\0"
NoCasinoGold:
    .ascii "You do not have enough gold to play at the casino.\n\0"
BarWords:
    .ascii "You spend time at the bar and feel more relaxed.\n\0"

RoulettePrompt:
    .ascii "Pick a color: 1 = Red, 2 = Black, 3 = Green\n\0"
RouletteWin:
    .ascii "You won at roulette! You gained $ \0"
RouletteLose:
    .ascii "You lost at roulette. Better luck next time.\n\0"
RouletteGreenWin:
    .ascii "JACKPOT! The ball landed on GREEN! You gained $ \0"
RouletteResult:
    .ascii "The ball landed on \0"
RedWord:
    .ascii "RED\n\0"
BlackWord:
    .ascii "BLACK\n\0"
GreenWord:
    .ascii "GREEN\n\0"

BardIntro1:
    .ascii "*After a hard work day, you see a strange looking fellow dancing miraculously towards your claim.*\n\0"
BardIntro2:
    .ascii "Howdy there, it is I, Eugene Gompers II. I am but a humble bard. I have traveled from distant lands telling many stories about many things... but just the other day I was robbed by the most notorious goblin in the land. Their name was Bon Bons the Pouty. That wretched creature took all the gold in my bag.\n\0"
BardIntro3:
    .ascii "*clears throat*\n\0"

BardSong1:
    .ascii "Ohhhhh there once was a goblin, pouty was they\n\0"
BardSong2:
    .ascii "Bon Bons would grumble through most of the day\n\0"
BardSong3:
    .ascii "Though they shuffled quite slow\n\0"
BardSong4:
    .ascii "They still made off with your gold, you know\n\0"
BardSong5:
    .ascii "They crept through the camp with a dramatic little pout,\n\0"
BardSong6:
    .ascii "Sneaking past lanterns while muttering about.\n\0"
BardSong7:
    .ascii "And Bon Bons the Pouty, with pockets all swelled,\n\0"
BardSong8:
    .ascii "Snatched every gold coin the campfire had held.\n\0"
BardSong9:
    .ascii "They grumbled and scampered, a mud-covered lout,\n\0"
BardSong10:
    .ascii "Leaving little sad footprints all over about.\n\0"
BardSong11:
    .ascii "If you follow the trail, you may just find old mold,\n\0"
BardSong12:
    .ascii "For Bon Bons the Pouty has pouted off with your gold.\n\0"

BardPrompt:
    .ascii "What do you say to the bard?\n1. What in the world was that horrific tune\n2. Is this some kind of warning?\n3. ...\n4. GET OFF MY CLAIM!\n\0"
UserResp1:
    .ascii "You say:\nwhat in the world was that horrific tune\n\0"
UserResp2:
    .ascii "You say:\nis this some kind of warning?\n\0"
UserResp3:
    .ascii "You say:\n...\n\0"
UserResp4:
    .ascii "You say:\nGET OFF MY CLAIM\n\0"

BardResp1:
    .ascii "I see you lack taste... hm... I'll be off now\n*You watch as he dances away the same as he arrived*\n\0"
BardResp2:
    .ascii "I see you're as dull as the gold you hold in your hands\n*You watch as he dances away the same as he arrived*\n\0"
BardResp3:
    .ascii "*You watch as he dances away the same as he arrived*\n\0"
BardResp4:
    .ascii "Oh great heavens, some people can't see talent if talent was a piece of gold on their claim\n*You watch as he dances away the same as he arrived*\n\0"

GoblinIntro:
    .ascii "You notice a dramatic sigh as you approach camp...\n\0"
GoblinSteal1:
    .ascii "Bon Bons the Pouty jumps from behind your tent.\n\0"
GoblinSteal2:
    .ascii "Hmph! Since you left your shiny gold here, I suppose I will take it.\n\0"
GoblinStolenMessage:
    .ascii "Bon Bons the Pouty stole $ \0"

ClaimDesc0:
    .ascii "You arrive at claim number 0.\nIt's quiet out here.\nThe river barely moves and the air feels still.\n\0"
ClaimDesc1:
    .ascii "You arrive at claim number 1.\nThe ground is uneven and the wind keeps picking up.\nFeels like a place no one has worked in a long time.\n\0"
ClaimDesc2:
    .ascii "You arrive at claim number 2.\nTrees crowd the edge of the claim and block some of the light.\nYou feel like you're being watched, but nothing is there.\n\0"
ClaimDesc3:
    .ascii "You arrive at claim number 3.\nThere's a lantern on the ground.\nWhoever left it didn't come back for it.\n\0"
ClaimDesc4:
    .ascii "You arrive at claim number 4.\nYou can hear water running somewhere nearby.\nIt's colder here than you expected.\n\0"
ClaimDesc5:
    .ascii "You arrive at claim number 5.\nNo one else is around.\nIt's cloudy and cold, and you can see your breath.\n\0"
ClaimDesc6:
    .ascii "You arrive at claim number 6.\nA thin layer of fog hangs low over the ground.\nYour boots sink a little with each step.\n\0"
ClaimDesc7:
    .ascii "You arrive at claim number 7.\nThere are faint tracks in the dirt.\nFeels like someone left here early this morning.\n\0"
ClaimDesc8:
    .ascii "You arrive at claim number 8.\nThe river cuts deep here and you can hear the water echo.\nIt's a little darker than the other claims.\n\0"
ClaimDesc9:
    .ascii "You arrive at claim number 9.\nThe air feels heavy and the ground is packed tight.\nIt's a tough claim, but maybe it holds something good.\n\0"

Separator:
    .ascii "----------------------------------------\n\0"
Line:
    .ascii "\n\0"

river:
    .quad 0,0,0,0,0,0,0,0,0,0

health: .quad 0
money: .quad 0
week: .quad 0
claim: .quad 0
bank: .quad 0
morale: .quad 50
BardEventDone: .quad 0
rng_state: .quad 88172645463393265

scan_buf: .space 64
int_buf: .space 32

.section .text
.global _start

_start:
    jmp Start

Start:
    lea rbx, Game
    call StrPrint

    mov rcx, 0

Loop:
    cmp rcx, 10
    jge LoopDone

    mov rbx, 1001
    call GetRandom
    mov [river + rcx*8], rbx

    inc rcx
    jmp Loop

LoopDone:
    mov rbx, 10
    call GetRandom
    mov r10, rbx

    mov rbx, 9001
    call GetRandom
    add rbx, 1000
    mov [river + r10*8], rbx

    mov rax, 100
    mov [health], rax

    xor rax, rax
    mov [money], rax
    mov [bank], rax

    mov rax, 1
    mov [week], rax

AskClaim:
    lea rbx, WhichClaim
    call StrPrint
    call IntScan

    cmp rbx, 0
    jl AskClaim
    cmp rbx, 9
    jg AskClaim

    mov [claim], rbx
    jmp PrintClaimDesc

PrintClaimDesc:
    mov rax, [claim]
    cmp rax, 0
    je PrintClaim0
    cmp rax, 1
    je PrintClaim1
    cmp rax, 2
    je PrintClaim2
    cmp rax, 3
    je PrintClaim3
    cmp rax, 4
    je PrintClaim4
    cmp rax, 5
    je PrintClaim5
    cmp rax, 6
    je PrintClaim6
    cmp rax, 7
    je PrintClaim7
    cmp rax, 8
    je PrintClaim8
    jmp PrintClaim9

PrintClaim0:
    lea rbx, ClaimDesc0
    call StrPrint
    jmp MainLoop
PrintClaim1:
    lea rbx, ClaimDesc1
    call StrPrint
    jmp MainLoop
PrintClaim2:
    lea rbx, ClaimDesc2
    call StrPrint
    jmp MainLoop
PrintClaim3:
    lea rbx, ClaimDesc3
    call StrPrint
    jmp MainLoop
PrintClaim4:
    lea rbx, ClaimDesc4
    call StrPrint
    jmp MainLoop
PrintClaim5:
    lea rbx, ClaimDesc5
    call StrPrint
    jmp MainLoop
PrintClaim6:
    lea rbx, ClaimDesc6
    call StrPrint
    jmp MainLoop
PrintClaim7:
    lea rbx, ClaimDesc7
    call StrPrint
    jmp MainLoop
PrintClaim8:
    lea rbx, ClaimDesc8
    call StrPrint
    jmp MainLoop
PrintClaim9:
    lea rbx, ClaimDesc9
    call StrPrint
    jmp MainLoop

MainLoop:
    mov rax, [week]
    cmp rax, 32
    jg GameOver

    mov rax, [health]
    cmp rax, 0
    jle GameOver

    lea rbx, WeekWords
    call StrPrint
    mov rbx, [week]
    call IntPrint
    lea rbx, Line
    call StrPrint

    lea rbx, MoneyWords
    call StrPrint
    mov rbx, [money]
    call IntPrint
    lea rbx, Line
    call StrPrint

    lea rbx, BankWords
    call StrPrint
    mov rbx, [bank]
    call IntPrint
    lea rbx, Line
    call StrPrint

    lea rbx, HealthWords
    call StrPrint
    mov rbx, [health]
    call IntPrint
    lea rbx, Percent
    call StrPrint

    lea rbx, MoraleWords
    call StrPrint
    mov rbx, [morale]
    call IntPrint
    lea rbx, Percent
    call StrPrint

    lea rbx, ClaimWords
    call StrPrint
    mov rbx, [claim]
    call IntPrint
    lea rbx, Line
    call StrPrint

    lea rbx, Sunday
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, Separator
    call StrPrint

AskSunday:
    call IntScan
    mov rax, rbx

    cmp rax, 1
    jl AskSunday
    cmp rax, 5
    jg AskSunday
    cmp rax, 2
    je GoCamp
    cmp rax, 3
    je NewClaim
    cmp rax, 4
    je Town
    cmp rax, 5
    je WorkHard
    jmp AfterSunday

Town:
    lea rbx, Separator
    call StrPrint
    lea rbx, TownMenu
    call StrPrint

AskTown:
    call IntScan
    mov rax, rbx
    cmp rax, 1
    jl AskTown
    cmp rax, 3
    jg AskTown
    cmp rax, 1
    je TownBank
    cmp rax, 2
    je TownCasino
    jmp TownBar

TownBank:
    mov rax, [money]
    mov rdx, [bank]
    add rdx, rax
    mov [bank], rdx
    xor rax, rax
    mov [money], rax
    lea rbx, BankDepositWords
    call StrPrint
    mov rax, [week]
    inc rax
    mov [week], rax
    jmp MainLoop

TownCasino:
    mov rax, [money]
    mov rdx, [bank]
    mov rcx, rax
    add rcx, rdx
    cmp rcx, 100
    jl NotEnoughForCasino

    mov rax, [money]
    cmp rax, 100
    jge PayFromMoneyOnly

    mov rbx, 100
    sub rbx, rax
    xor rax, rax
    mov [money], rax
    mov rdx, [bank]
    sub rdx, rbx
    mov [bank], rdx
    jmp CasinoPaid

PayFromMoneyOnly:
    sub rax, 100
    mov [money], rax

CasinoPaid:
    jmp Roulette

NotEnoughForCasino:
    lea rbx, NoCasinoGold
    call StrPrint
    mov rax, [week]
    inc rax
    mov [week], rax
    jmp MainLoop

TownBar:
    mov rbx, 21
    call GetRandom
    add rbx, 10
    mov r10, rbx
    mov rax, [morale]
    add rax, r10
    cmp rax, 100
    jle BarMoraleOk
    mov rax, 100
BarMoraleOk:
    mov [morale], rax
    lea rbx, BarWords
    call StrPrint
    mov rax, [week]
    inc rax
    mov [week], rax
    jmp MainLoop

GoblinEvent:
    lea rbx, Separator
    call StrPrint
    lea rbx, GoblinIntro
    call StrPrint
    lea rbx, GoblinSteal1
    call StrPrint
    lea rbx, GoblinSteal2
    call StrPrint

    mov rax, [money]
    mov rbx, 25
    imul rax, rbx
    xor rdx, rdx
    mov rcx, 100
    div rcx
    mov r10, rax

    mov rax, [money]
    sub rax, r10
    mov [money], rax

    lea rbx, GoblinStolenMessage
    call StrPrint
    mov rbx, r10
    call IntPrint
    lea rbx, Line
    call StrPrint
    ret

GoCamp:
    lea rbx, Separator
    call StrPrint
    mov rax, [BardEventDone]
    cmp rax, 1
    jne SkipGoblin

    mov rbx, 10
    call GetRandom
    cmp rbx, 0
    jne SkipGoblin
    call GoblinEvent

SkipGoblin:
    mov rbx, 26
    call GetRandom
    add rbx, 25
    mov r10, rbx

    mov rax, [health]
    add rax, r10
    cmp rax, 100
    jle CampOk
    mov rax, 100
CampOk:
    mov [health], rax
    lea rbx, RegainWords
    call StrPrint
    mov rbx, r10
    call IntPrint
    lea rbx, RegainWords2
    call StrPrint
    jmp AfterSunday

NewClaim:
    lea rbx, Separator
    call StrPrint
    mov rax, [claim]
    mov rdx, [river + rax*8]
    xor rbx, rbx
    mov [river + rax*8], rbx

    lea rbx, LeaveWords
    call StrPrint
    mov rbx, rdx
    call IntPrint
    lea rbx, LeaveWords2
    call StrPrint

AskNewClaim:
    lea rbx, NewClaimWords
    call StrPrint
    call IntScan
    cmp rbx, 0
    jl AskNewClaim
    cmp rbx, 9
    jg AskNewClaim
    mov [claim], rbx
    jmp PrintClaimDesc

Roulette:
    lea rbx, Separator
    call StrPrint
AskRoulette:
    lea rbx, RoulettePrompt
    call StrPrint
    call IntScan
    cmp rbx, 1
    jl AskRoulette
    cmp rbx, 3
    jg AskRoulette
    mov r11, rbx

    mov rbx, 37
    call GetRandom
    mov r10, rbx

    lea rbx, RouletteResult
    call StrPrint
    cmp r10, 0
    je PrintGreen
    cmp r10, 18
    jle PrintRed
PrintBlack:
    lea rbx, BlackWord
    call StrPrint
    jmp CheckWin
PrintRed:
    lea rbx, RedWord
    call StrPrint
    jmp CheckWin
PrintGreen:
    lea rbx, GreenWord
    call StrPrint

CheckWin:
    cmp r10, 0
    je GreenCase
    cmp r10, 18
    jle RedCase
    mov r10, 2
    jmp CompareChoice
RedCase:
    mov r10, 1
    jmp CompareChoice
GreenCase:
    mov r10, 3
CompareChoice:
    cmp r10, r11
    je RouletteWinCase
    jmp RouletteLoseCase

RouletteWinCase:
    cmp r11, 3
    je GreenWin
    lea rbx, RouletteWin
    call StrPrint
    mov rbx, 500
    call IntPrint
    lea rbx, Line
    call StrPrint
    mov rax, [money]
    add rax, 500
    mov [money], rax
    jmp SkipMining

GreenWin:
    lea rbx, RouletteGreenWin
    call StrPrint
    mov rbx, 1000
    call IntPrint
    lea rbx, Line
    call StrPrint
    mov rax, [money]
    add rax, 1000
    mov [money], rax
    jmp SkipMining

RouletteLoseCase:
    lea rbx, RouletteLose
    call StrPrint

SkipMining:
    mov rax, [week]
    inc rax
    mov [week], rax
    jmp MainLoop

WorkHard:
    lea rbx, Separator
    call StrPrint

    mov rax, [claim]
    mov rcx, [river + rax*8]
    mov rbx, rcx
    inc rbx
    call GetRandom
    mov r10, rbx

    lea rbx, Line
    call StrPrint
    lea rbx, WorkingWords
    call StrPrint
    mov rbx, [claim]
    call IntPrint
    lea rbx, Line
    call StrPrint
    lea rbx, MinedWords
    call StrPrint
    mov rbx, r10
    call IntPrint
    lea rbx, MinedWords2
    call StrPrint

    cmp r10, 10
    jge MoraleOk1
    mov rax, [morale]
    sub rax, 5
    cmp rax, 0
    jge MoraleStore1
    xor rax, rax
MoraleStore1:
    mov [morale], rax
MoraleOk1:
    mov rax, [claim]
    mov rcx, [river + rax*8]
    sub rcx, r10
    mov [river + rax*8], rcx
    mov rax, [money]
    add rax, r10
    mov [money], rax

    mov rax, [claim]
    mov rcx, [river + rax*8]
    mov rbx, rcx
    inc rbx
    call GetRandom
    mov r10, rbx

    lea rbx, MinedWords
    call StrPrint
    mov rbx, r10
    call IntPrint
    lea rbx, MinedWords2
    call StrPrint

    cmp r10, 10
    jge MoraleOk2
    mov rax, [morale]
    sub rax, 5
    cmp rax, 0
    jge MoraleStore2
    xor rax, rax
MoraleStore2:
    mov [morale], rax
MoraleOk2:
    mov rax, [claim]
    mov rcx, [river + rax*8]
    sub rcx, r10
    mov [river + rax*8], rcx
    mov rax, [money]
    add rax, r10
    mov [money], rax

    mov rbx, 21
    call GetRandom
    add rbx, 20
    mov r10, rbx
    mov rax, [health]
    sub rax, r10
    cmp rax, 0
    jge HardHealthOk
    xor rax, rax
HardHealthOk:
    mov [health], rax

    lea rbx, LostWords
    call StrPrint
    mov rbx, r10
    call IntPrint
    lea rbx, LostWords2
    call StrPrint

    lea rbx, MoraleWords
    call StrPrint
    mov rbx, [morale]
    call IntPrint
    lea rbx, Percent
    call StrPrint

    mov rax, [week]
    inc rax
    mov [week], rax
    jmp MainLoop

BardEvent:
    lea rbx, Line
    call StrPrint
    lea rbx, Separator
    call StrPrint
    lea rbx, Line
    call StrPrint

    lea rbx, BardIntro1
    call StrPrint
    lea rbx, BardIntro2
    call StrPrint
    lea rbx, BardIntro3
    call StrPrint

    lea rbx, Line
    call StrPrint
    lea rbx, Separator
    call StrPrint
    lea rbx, Line
    call StrPrint

    lea rbx, BardSong1
    call StrPrint
    lea rbx, BardSong2
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardSong3
    call StrPrint
    lea rbx, BardSong4
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardSong5
    call StrPrint
    lea rbx, BardSong6
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardSong7
    call StrPrint
    lea rbx, BardSong8
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardSong9
    call StrPrint
    lea rbx, BardSong10
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardSong11
    call StrPrint
    lea rbx, BardSong12
    call StrPrint
    lea rbx, Line
    call StrPrint

AskBard:
    lea rbx, BardPrompt
    call StrPrint
    call IntScan
    mov rax, rbx
    cmp rax, 1
    je Bard1
    cmp rax, 2
    je Bard2
    cmp rax, 3
    je Bard3
    cmp rax, 4
    je Bard4
    jmp AskBard

Bard1:
    lea rbx, UserResp1
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardResp1
    call StrPrint
    jmp BardDone
Bard2:
    lea rbx, UserResp2
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardResp2
    call StrPrint
    jmp BardDone
Bard3:
    lea rbx, UserResp3
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardResp3
    call StrPrint
    jmp BardDone
Bard4:
    lea rbx, UserResp4
    call StrPrint
    lea rbx, Line
    call StrPrint
    lea rbx, BardResp4
    call StrPrint

BardDone:
    mov rax, 1
    mov [BardEventDone], rax
    ret

AfterSunday:
    mov rax, [claim]
    mov rcx, [river + rax*8]
    mov rbx, rcx
    inc rbx
    call GetRandom
    mov r10, rbx

    lea rbx, Line
    call StrPrint
    lea rbx, WorkingWords
    call StrPrint
    mov rbx, [claim]
    call IntPrint
    lea rbx, Line
    call StrPrint
    lea rbx, MinedWords
    call StrPrint
    mov rbx, r10
    call IntPrint
    lea rbx, MinedWords2
    call StrPrint

    mov rax, [BardEventDone]
    cmp rax, 1
    je SkipBard
    cmp r10, 150
    jl SkipBard
    cmp r10, 250
    jg SkipBard
    call BardEvent

SkipBard:
    cmp r10, 10
    jge MoraleOk
    mov rax, [morale]
    sub rax, 5
    cmp rax, 0
    jge MoraleStore
    xor rax, rax
MoraleStore:
    mov [morale], rax

MoraleOk:
    mov rax, [claim]
    mov rcx, [river + rax*8]
    sub rcx, r10
    mov [river + rax*8], rcx

    mov rax, [money]
    add rax, r10
    mov [money], rax

    mov rbx, 11
    call GetRandom
    add rbx, 10
    mov r10, rbx
    mov rax, [health]
    sub rax, r10
    cmp rax, 0
    jge WearOk
    xor rax, rax
WearOk:
    mov [health], rax

    lea rbx, LostWords
    call StrPrint
    mov rbx, r10
    call IntPrint
    lea rbx, LostWords2
    call StrPrint

    lea rbx, MoraleWords
    call StrPrint
    mov rbx, [morale]
    call IntPrint
    lea rbx, Percent
    call StrPrint

    mov rax, [week]
    inc rax
    mov [week], rax
    jmp MainLoop

GameOver:
    lea rbx, GameOverWords
    call StrPrint
    lea rbx, FinalMoney
    call StrPrint
    mov rbx, [money]
    call IntPrint
    lea rbx, Line
    call StrPrint
    lea rbx, FinalHealthLabel
    call StrPrint
    mov rbx, [health]
    call IntPrint
    lea rbx, Percent
    call StrPrint
    call StopProgram
StrPrint:
    push rax
    push rcx
    push rdx
    push rsi
    push rdi

    mov rsi, rbx
    xor rdx, rdx
StrPrintLen:
    cmp byte ptr [rsi + rdx], 0
    je StrPrintWrite
    inc rdx
    jmp StrPrintLen
StrPrintWrite:
    mov rax, 1
    mov rdi, 1
    mov rsi, rbx
    syscall

    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rax
    ret

IntPrint:
    push rax
    push rcx
    push rdx
    push rsi
    push rdi
    push r8

    lea rsi, int_buf + 31
    mov byte ptr [rsi], 0
    mov rax, rbx
    xor rcx, rcx

    cmp rax, 0
    jne IntPrintLoop
    dec rsi
    mov byte ptr [rsi], '0'
    jmp IntPrintDone

IntPrintLoop:
    xor rdx, rdx
    mov r8, 10
    div r8
    add dl, '0'
    dec rsi
    mov [rsi], dl
    test rax, rax
    jne IntPrintLoop

IntPrintDone:
    mov rbx, rsi
    call StrPrint

    pop r8
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rax
    ret

IntScan:
    push rax
    push rcx
    push rdx
    push rsi
    push rdi
    push r8

    mov rax, 0
    mov rdi, 0
    lea rsi, scan_buf
    mov rdx, 63
    syscall

    lea rsi, scan_buf
    xor rbx, rbx
    xor rcx, rcx
    mov r8, 0

IntScanSkip:
    mov al, byte ptr [rsi + rcx]
    cmp al, ' '
    je IntScanSkipInc
    cmp al, 10
    je IntScanZero
    cmp al, '-'
    jne IntScanLoop
    mov r8, 1
    inc rcx
    jmp IntScanLoop
IntScanSkipInc:
    inc rcx
    jmp IntScanSkip

IntScanLoop:
    mov al, byte ptr [rsi + rcx]
    cmp al, '0'
    jl IntScanApplySign
    cmp al, '9'
    jg IntScanApplySign
    imul rbx, rbx, 10
    sub al, '0'
    movzx rdx, al
    add rbx, rdx
    inc rcx
    jmp IntScanLoop

IntScanApplySign:
    cmp r8, 1
    jne IntScanDone
    neg rbx
    jmp IntScanDone

IntScanZero:
    xor rbx, rbx

IntScanDone:
    pop r8
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rax
    ret

GetRandom:
    push rax
    push rdx
    push rcx

    rdtsc
    shl rdx, 32
    or rax, rdx
    xor rax, [rng_state]
    mov [rng_state], rax

    mov rcx, 6364136223846793005
    imul rax, rcx
    mov rcx, 1442695040888963407
    add rax, rcx
    mov [rng_state], rax

    xor rdx, rdx
    div rbx
    mov rbx, rdx

    pop rcx
    pop rdx
    pop rax
    ret

StopProgram:
    mov rax, 60
    xor rdi, rdi
    syscall
