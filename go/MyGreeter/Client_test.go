package MyGreeter

import (
	"reflect"
	"testing"
)

func TestClient_GetGreeting(t *testing.T) {
	tests := []struct {
		name string
		want string
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			self := &Client{}
			if got := self.GetGreeting(); got != tt.want {
				t.Errorf("GetGreeting() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestInstance(t *testing.T) {
	tests := []struct {
		name string
		want *Client
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Instance(); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Instance() = %v, want %v", got, tt.want)
			}
		})
	}
}