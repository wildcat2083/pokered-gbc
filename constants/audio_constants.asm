; pitch
; Audio[1|2|3]_Pitches indexes (see audio/notes.asm)
	const_def
	const C_ ; 0
	const C# ; 1
	const D_ ; 2
	const D# ; 3
	const E_ ; 4
	const F_ ; 5
	const F# ; 6
	const G_ ; 7
	const G# ; 8
	const A_ ; 9
	const A# ; A
	const B_ ; B

; channel
; Audio[1|2|3]_HWChannelBaseAddresses, Audio[1|2|3]_HWChannelDisableMasks,
; and Audio[1|2|3]_HWChannelEnableMasks indexes (see audio/engine_[1|2|3].asm)
	const_def
	const Ch1 ; 0
	const Ch2 ; 1
	const Ch3 ; 2
	const Ch4 ; 3
NUM_MUSIC_CHANS EQU const_value
	const Ch5 ; 4
	const Ch6 ; 5
	const Ch7 ; 6
	const Ch8 ; 7
NUM_NOISE_CHANS EQU const_value - NUM_MUSIC_CHANS
NUM_CHANNELS EQU const_value

; HW sound channel register base addresses
HW_CH1_BASE EQU LOW(rNR10)
HW_CH2_BASE EQU LOW(rNR21) - 1
HW_CH3_BASE EQU LOW(rNR30)
HW_CH4_BASE EQU LOW(rNR41) - 1

; HW sound channel enable bit masks
HW_CH1_ENABLE_MASK EQU %00010001
HW_CH2_ENABLE_MASK EQU %00100010
HW_CH3_ENABLE_MASK EQU %01000100
HW_CH4_ENABLE_MASK EQU %10001000

; HW sound channel disable bit masks
HW_CH1_DISABLE_MASK EQU (~HW_CH1_ENABLE_MASK & $ff)
HW_CH2_DISABLE_MASK EQU (~HW_CH2_ENABLE_MASK & $ff)
HW_CH3_DISABLE_MASK EQU (~HW_CH3_ENABLE_MASK & $ff)
HW_CH4_DISABLE_MASK EQU (~HW_CH4_ENABLE_MASK & $ff)

	const_def 1
	const REG_DUTY_SOUND_LEN  ; 1
	const REG_VOLUME_ENVELOPE ; 2
	const REG_FREQUENCY_LO    ; 3

; wChannelFlags1 constants
	const_def
	const BIT_PERFECT_PITCH          ; 0 ; controlled by toggle_perfect_pitch command
	const BIT_SOUND_CALL             ; 1 ; if in sound call
	const BIT_NOISE_OR_SFX           ; 2 ; if channel is the music noise channel or an SFX channel
	const BIT_VIBRATO_DIRECTION      ; 3 ; if the pitch is above or below normal (cycles)
	const BIT_PITCH_SLIDE_ON         ; 4 ; if pitch slide is active
	const BIT_PITCH_SLIDE_DECREASING ; 5 ; if the pitch slide frequency is decreasing (instead of increasing)
	const BIT_ROTATE_DUTY_CYCLE      ; 6 ; if rotating duty cycle

; wChannelFlags2 constant (only has one flag)
BIT_EXECUTE_MUSIC EQU 0 ; if in execute music
