;-------------------------------------------------
;Z80 DISASSEMBLER LISTING
;Label  Instruction
;-------------------------------------------------

L0002:  .EQU 003AH
L0004:  .EQU 0046H
L0006:  .EQU 0051H
L0012:  .EQU 0054H
L0009:  .EQU 0057H
L0015:  .EQU 007AH
L0014:  .EQU 007EH
L0027:  .EQU 0091H
L0020:  .EQU 0099H
L0033:  .EQU 00AFH
L0041:  .EQU 00D0H
L0034:  .EQU 00D9H
L0039:  .EQU 00DAH
L0038:  .EQU 00E8H
L0050:  .EQU 0130H
L0053:  .EQU 0142H
L0057:  .EQU 0161H
L0066:  .EQU 0184H
L0060:  .EQU 0186H
L0067:  .EQU 018FH
L0068:  .EQU 0199H
L0070:  .EQU 01BCH
L0072:  .EQU 01C5H
L0073:  .EQU 01E0H
L0074:  .EQU 01EDH

        LD B,(HL)
        LD B,H
        JR NZ,L0001
        LD SP,3820H
        ADD HL,SP
        JR NZ,L0002
        ADD HL,SP
        JR NZ,L0003
        LD A,(BC)
        JR NC,L0004
        JR NZ,L0005
        LD (0D20H),A
        LD A,(BC)
        LD B,(HL)
        LD B,H
        JR NZ,L0006
L0003:  LD B,L
        JR NZ,L0007
        JR NC,L0008
        DEC C
        LD A,(BC)
        LD B,E
        LD (HL),20H
        JR NC,L0009
        JR NZ,L0010
        LD A,(BC)
        LD (2037H),A
        DEC C
        LD A,(BC)
        LD B,(HL)
        LD B,L
        JR NZ,L0011
        JR NC,L0012
        DEC C
L0010:  LD A,(BC)
L0001:  LD (2030H),A
        LD SP,2033H
        DEC C
        LD A,(BC)
        LD B,C
L0008:  LD B,(HL)
        JR NZ,L0013
L0005:  LD A,(BC)
        LD B,(HL)
        LD B,H
        JR NZ,L0014
        SCF
        JR NZ,L0015
        JR NC,L0016
        DEC C
L0007:  LD A,(BC)
        LD B,(HL)
L0013:  LD B,H
        JR NZ,L0017
        INC SP
        JR NZ,L0018
        LD A,(BC)
        LD SP,2030H
        LD B,L
        LD B,L
        JR NZ,L0019
        LD A,(BC)
        LD B,(HL)
        LD B,H
        JR NZ,L0020
L0018:  LD B,L
        JR NZ,L0021
        JR NC,L0022
        DEC C
L0011:  LD A,(BC)
        LD B,E
L0019:  LD (HL),20H
L0016:  JR NC,L0023
        JR NZ,L0024
        LD A,(BC)
        LD (2037H),A
        LD (0D34H),A
        LD A,(BC)
        LD (2030H),A
        JR NC,L0025
L0024:  JR NZ,L0026
        LD A,(BC)
        LD B,C
        LD B,(HL)
        JR NZ,L0027
L0017:  LD A,(BC)
        LD B,(HL)
        LD B,H
L0022:  JR NZ,L0028
        SCF
        JR NZ,L0029
L0026:  JR NC,L0025
        DEC C
        LD A,(BC)
        JR NC,L0030
        JR NZ,L0031
        INC SP
L0021:  JR NZ,L0032
        LD A,(BC)
        LD (2031H),A
        ADD HL,SP
        LD (3020H),A
L0023:  ADD HL,SP
        JR NZ,L0033
        LD A,(BC)
        LD B,H
L0032:  LD B,H
        JR NZ,L0034
        LD SP,3820H
        ADD HL,SP
        JR NZ,L0035
        ADD HL,SP
L0025:  JR NZ,L0036
        LD A,(BC)
        LD B,H
        LD B,H
        JR NZ,L0037
        LD B,L
        JR NZ,L0038
        JR NC,L0039
        DEC C
        LD A,(BC)
L0029:  LD B,H
L0036:  LD B,H
        JR NZ,L0040
L0028:  INC SP
        JR NZ,L0041
        LD A,(BC)
L0031:  LD B,E
        DEC (HL)
        JR NZ,L0042
L0030:  LD A,(BC)
        LD B,(HL)
        DEC (HL)
        JR NZ,L0039
        LD A,(BC)
        LD B,L
        LD (HL),20H
        JR NC,L0043
        JR NZ,L0044
L0042:  LD A,(BC)
        INC (HL)
        SCF
        JR NZ,L0045
        LD A,(BC)
        LD B,E
        LD B,H
L0035:  JR NZ,L0046
        INC SP
        JR NZ,L0047
L0044:  ADD HL,SP
        JR NZ,L0040
        LD A,(BC)
        LD B,(HL)
L0045:  LD SP,0D20H
        LD A,(BC)
        LD B,E
L0037:  LD B,D
        JR NZ,L0048
        LD B,(HL)
        DEC C
        LD A,(BC)
L0040:  LD B,E
        LD B,D
        JR NZ,L0049
        LD B,(HL)
        DEC C
        LD A,(BC)
        LD B,E
        LD B,D
        JR NZ,L0050
        LD B,(HL)
        DEC C
        LD A,(BC)
        LD B,E
        LD B,D
        JR NZ,L0051
        LD B,(HL)
        DEC C
        LD A,(BC)
        INC (HL)
        SCF
        DEC C
        LD A,(BC)
        LD B,E
        LD B,H
        JR NZ,L0052
        INC SP
        JR NZ,L0053
L0047:  ADD HL,SP
        DEC C
        LD A,(BC)
        LD B,E
L0046:  LD SP,0A0DH
L0043:  LD SP,2030H
        LD B,L
        INC SP
        DEC C
        LD A,(BC)
        JR NC,L0054
L0048:  JR NZ,L0055
        LD B,(HL)
        DEC C
        LD A,(BC)
        LD B,H
        LD B,H
L0049:  JR NZ,L0056
        LD SP,3820H
        LD B,E
        JR NZ,L0057
        ADD HL,SP
        DEC C
        LD A,(BC)
        LD B,E
        DEC (HL)
        DEC C
L0051:  LD A,(BC)
        JR NC,L0058
        JR NZ,L0059
        SCF
        DEC C
        LD A,(BC)
        JR NC,L0060
        JR NZ,L0061
        JR NC,L0062
        LD A,(BC)
L0052:  LD B,H
        LD B,H
        JR NZ,L0063
        LD B,L
        JR NZ,L0064
        JR NC,L0065
        LD A,(BC)
        LD B,H
        INC SP
L0062:  JR NZ,L0066
        LD (0A0DH),A
        SCF
L0054:  ADD HL,SP
        DEC C
        LD A,(BC)
        LD B,H
L0065:  INC SP
L0056:  JR NZ,L0067
        LD SP,0A0DH
        LD B,E
        LD B,D
        JR NZ,L0068
        ADD HL,SP
        DEC C
        LD A,(BC)
        LD B,C
L0055:  LD B,(HL)
        DEC C
L0059:  LD A,(BC)
        LD SP,2045H
L0058:  LD SP,0D30H
        LD A,(BC)
        LD SP,0D44H
L0061:  LD A,(BC)
        LD (2030H),A
        LD B,(HL)
        LD B,H
L0064:  DEC C
        LD A,(BC)
        LD B,H
        INC SP
L0063:  JR NZ,L0069
        LD SP,0A0DH
        LD B,H
        LD B,H
        JR NZ,L0070
        INC SP
        DEC C
        LD A,(BC)
        LD SP,2030H
        LD B,L
        LD B,C
        DEC C
        LD A,(BC)
        LD B,E
        LD SP,0A0DH
        LD SP,2030H
        LD B,H
        LD B,L
        DEC C
        LD A,(BC)
        LD B,E
        INC SP
        JR NZ,L0071
        JR NC,L0072
        JR NC,L0073
        DEC C
        LD A,(BC)
        LD SP,2031H
        SCF
        LD B,(HL)
        JR NZ,L0073
        ADD HL,SP
        DEC C
        LD A,(BC)
L0069:  LD B,(HL)
        DEC (HL)
        DEC C
        LD A,(BC)
        SCF
        LD B,D
        DEC C
        LD A,(BC)
        JR C,L0074
        DEC C
        LD A,(BC)
        DEC (HL)
        LD B,(HL)
        DEC C
        LD A,(BC)
        LD SP,0D41H
        LD A,(BC)
        SCF
        SCF
        DEC C
        LD A,(BC)
        LD (0D42H),A
        LD A,(BC)
        LD B,(HL)
        LD SP,0A0DH
L0071:  LD B,E
        ADD HL,SP
        DEC C
        LD A,(BC)
        DEC C
        LD A,(BC)
        DEC C
        LD A,(BC)

;--------------------------------------------
;LIST OF LABELS
;Sorted by address:      Sorted by name:
;--------------------------------------------

;L0003:  001A            L0001:  0036
;L0010:  0035            L0002:  003A
;L0001:  0036            L0003:  001A
;L0002:  003A            L0004:  0046
;L0008:  003F            L0005:  0042
;L0005:  0042            L0006:  0051
;L0004:  0046            L0007:  004D
;L0007:  004D            L0008:  003F
;L0013:  004F            L0009:  0057
;L0006:  0051            L0010:  0035
;L0012:  0054            L0011:  0068
;L0009:  0057            L0012:  0054
;L0018:  0062            L0013:  004F
;L0011:  0068            L0014:  007E
;L0019:  006A            L0015:  007A
;L0016:  006C            L0016:  006C
;L0015:  007A            L0017:  0084
;L0024:  007D            L0018:  0062
;L0014:  007E            L0019:  006A
;L0017:  0084            L0020:  0099
;L0022:  0087            L0021:  0095
;L0026:  008C            L0022:  0087
;L0027:  0091            L0023:  009F
;L0021:  0095            L0024:  007D
;L0020:  0099            L0025:  00AE
;L0023:  009F            L0026:  008C
;L0032:  00A4            L0027:  0091
;L0025:  00AE            L0028:  00C0
;L0033:  00AF            L0029:  00BC
;L0029:  00BC            L0030:  00C8
;L0036:  00BD            L0031:  00C4
;L0028:  00C0            L0032:  00A4
;L0031:  00C4            L0033:  00AF
;L0030:  00C8            L0034:  00D9
;L0041:  00D0            L0035:  00DD
;L0042:  00D5            L0036:  00BD
;L0034:  00D9            L0037:  00EC
;L0039:  00DA            L0038:  00E8
;L0035:  00DD            L0039:  00DA
;L0044:  00E2            L0040:  00F2
;L0045:  00E7            L0041:  00D0
;L0038:  00E8            L0042:  00D5
;L0037:  00EC            L0043:  0119
;L0040:  00F2            L0044:  00E2
;L0047:  0112            L0045:  00E7
;L0046:  0116            L0046:  0116
;L0043:  0119            L0047:  0112
;L0048:  0122            L0048:  0122
;L0049:  0129            L0049:  0129
;L0050:  0130            L0050:  0130
;L0051:  0137            L0051:  0137
;L0053:  0142            L0052:  0146
;L0052:  0146            L0053:  0142
;L0062:  0152            L0054:  0158
;L0054:  0158            L0055:  016A
;L0065:  015C            L0056:  015D
;L0056:  015D            L0057:  0161
;L0057:  0161            L0058:  0170
;L0055:  016A            L0059:  016C
;L0059:  016C            L0060:  0186
;L0058:  0170            L0061:  0177
;L0061:  0177            L0062:  0152
;L0064:  017D            L0063:  0181
;L0063:  0181            L0064:  017D
;L0066:  0184            L0065:  015C
;L0060:  0186            L0066:  0184
;L0067:  018F            L0067:  018F
;L0068:  0199            L0068:  0199
;L0069:  01B3            L0069:  01B3
;L0070:  01BC            L0070:  01BC
;L0072:  01C5            L0071:  01D3
;L0071:  01D3            L0072:  01C5
;L0073:  01E0            L0073:  01E0
;L0074:  01ED            L0074:  01ED
